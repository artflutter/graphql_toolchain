import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_toolchain/bloc/companies_paginated_bloc.dart';
import 'package:graphql_toolchain/bloc/graphql/event.dart';
import 'package:graphql_toolchain/bloc/graphql/state.dart';
import 'package:graphql_toolchain/graphql_provider.dart';
import 'package:graphql_toolchain/models/graphql/graphql_api.graphql.dart';

class Bloc extends StatefulWidget {
  @override
  _BlocState createState() => _BlocState();
}

class _BlocState extends State<Bloc> {
  Completer<void> _refreshCompleter;
  CompaniesPaginatedBloc bloc;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
    bloc = CompaniesPaginatedBloc(client: client);
  }

  Future _handleRefreshStart(CompaniesPaginatedBloc bloc) {
    bloc.add(GraphqlRefetchEvent<CompaniesPaginatedData$Query>());
    return _refreshCompleter.future;
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  void _handleRefreshEnd() {
    _refreshCompleter?.complete();
    _refreshCompleter = Completer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extended BLOC example'),
      ),
      body: RefreshIndicator(
        onRefresh: () async => _handleRefreshStart(bloc),
        child: BlocBuilder<CompaniesPaginatedBloc,
                GraphqlState<CompaniesPaginatedData$Query>>(
            bloc: bloc,
            builder: (_, state) {
              Widget child = Container();

              if (state is GraphqlLoading) {
                child = Center(child: CircularProgressIndicator());
              }

              if (state is GraphqlErrorState<CompaniesPaginatedData$Query>) {
                _handleRefreshEnd();
                child = ListView(children: [
                  Text(
                    parseOperationException(state.error),
                    style: TextStyle(color: Theme.of(context).errorColor),
                  )
                ]);
              }

              if (state is GraphqlLoaded || state is GraphqlFetchMoreState) {
                _handleRefreshEnd();
                final itemCount = state.data.allCompaniesPaginated.length;

                if (itemCount == 0) {
                  child = ListView(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.inbox),
                        SizedBox(width: 8),
                        Text('No data'),
                      ],
                    )
                  ]);
                } else {
                  child = ListView.separated(
                    separatorBuilder: (_, __) => SizedBox(
                      height: 8.0,
                    ),
                    key: PageStorageKey('reports'),
                    itemCount: itemCount,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == itemCount - 1 && state is GraphqlLoaded) {
                        bloc.fetchMore(limit: 25, offset: itemCount);
                      }

                      final company = state.data.allCompaniesPaginated[index];

                      Widget tile = ListTile(
                        title: Text(company.name),
                      );

                      if (state is GraphqlFetchMoreState &&
                          index == itemCount - 1) {
                        tile = Column(
                          children: [
                            tile,
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: CircularProgressIndicator(),
                            ),
                          ],
                        );
                      }

                      return tile;
                    },
                  );
                }
              }

              return AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: child,
              );
            }),
      ),
    );
  }
}

String parseOperationException(OperationException error) {
  if (error.clientException != null) {
    final exception = error.clientException;

    if (exception is NetworkException) {
      return 'Failed to connect to ${exception.uri}';
    } else {
      return exception.toString();
    }
  }

  if (error.graphqlErrors != null && error.graphqlErrors.isNotEmpty) {
    final errors = error.graphqlErrors;

    return errors.first.message;
  }

  return 'Unknown error';
}
