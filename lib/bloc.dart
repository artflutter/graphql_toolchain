import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide QueryState;
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:graphql_toolchain/bloc/companies_paginated_bloc.dart';
import 'package:graphql_toolchain/graphql_provider.dart';
import 'package:graphql_toolchain/models/graphql/graphql_api.graphql.dart';

class Bloc extends StatefulWidget {
  @override
  _BlocState createState() => _BlocState();
}

class _BlocState extends State<Bloc> {
  late Completer<void> _refreshCompleter;
  late CompaniesPaginatedBloc bloc;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
    bloc = CompaniesPaginatedBloc(client: client)..run();
  }

  Future _handleRefreshStart(CompaniesPaginatedBloc bloc) {
    bloc.refetch();
    return _refreshCompleter.future;
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  void _handleRefreshEnd() {
    _refreshCompleter.complete();
    _refreshCompleter = Completer();
  }

  Widget buildData(QueryState<CompaniesPaginatedData$Query> state,
      CompaniesPaginatedData$Query? data) {
    final itemCount = data?.allCompaniesPaginated?.length ?? 0;

    if (itemCount == 0) {
      return ListView(children: [
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
      return ListView.separated(
        separatorBuilder: (_, __) => SizedBox(height: 8.0),
        key: PageStorageKey('reports'),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          state.maybeMap(
            loaded: (_) {
              if (index == itemCount - 1) {
                bloc.fetchMore(limit: 25, offset: itemCount);
              }
            },
            orElse: () {},
          );

          final company = data?.allCompaniesPaginated?.elementAt(index);

          final tile = ListTile(
            title: Text(company?.name ?? ''),
          );

          return state.maybeMap<Widget>(
            fetchMore: (_) {
              if (index == itemCount - 1) {
                return Column(
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
            orElse: () => tile,
          );
        },
      );
    }
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
                QueryState<CompaniesPaginatedData$Query>>(
            bloc: bloc,
            builder: (_, state) {
              final child = state.when(
                  initial: () => Container(),
                  loading: (_) => Center(child: CircularProgressIndicator()),
                  error: (error, __) => ListView(
                        padding: EdgeInsets.all(16),
                        children: [Text('Error')],
                      ),
                  loaded: (data, _) {
                    _handleRefreshEnd();
                    return buildData(state, data);
                  },
                  refetch: (data, _) => buildData(state, data),
                  fetchMore: (data, _) {
                    _handleRefreshEnd();
                    return buildData(state, data);
                  });

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
  // if (error.clientException != null) {
  //   final exception = error.clientException;
  //
  //   if (exception is NetworkException) {
  //     return 'Failed to connect to ${exception.uri}';
  //   } else {
  //     return exception.toString();
  //   }
  // }

  if (error.graphqlErrors != null && error.graphqlErrors.isNotEmpty) {
    final errors = error.graphqlErrors;

    return errors.first.message;
  }

  return 'Unknown error';
}
