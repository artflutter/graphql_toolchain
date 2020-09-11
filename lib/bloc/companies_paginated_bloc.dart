import 'package:graphql_toolchain/bloc/graphql/bloc.dart';
import 'package:graphql_toolchain/bloc/graphql/event.dart';
import 'package:graphql_toolchain/models/graphql/graphql_api.dart';
import 'package:meta/meta.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CompaniesPaginatedBloc extends GraphqlBloc<CompaniesPaginatedData$Query> {
  CompaniesPaginatedBloc(
      {@required GraphQLClient client, WatchQueryOptions options})
      : super(
          client: client,
          options: options ??
              WatchQueryOptions(
                document: CompaniesPaginatedDataQuery().document,
                variables: CompaniesPaginatedDataArguments(
                  pagination: PaginationInput(limit: 25, offset: 0),
                ).toJson(),
              ),
        );

  @override
  CompaniesPaginatedData$Query parseData(Map<String, dynamic> data) {
    return CompaniesPaginatedData$Query.fromJson(data);
  }

  void fetchMore({@required int limit, @required int offset}) {
    add(GraphqlFetchMoreEvent(
        options: FetchMoreOptions(
      variables: CompaniesPaginatedDataArguments(
        pagination: PaginationInput(
          limit: limit,
          offset: offset,
        ),
      ).toJson(),
      updateQuery: (dynamic previousResultData, dynamic fetchMoreResultData) {
        final List<dynamic> repos = <dynamic>[
          ...previousResultData['allCompaniesPaginated'] as List<dynamic>,
          ...fetchMoreResultData['allCompaniesPaginated'] as List<dynamic>
        ];

        fetchMoreResultData['allCompaniesPaginated'] = repos;

        return fetchMoreResultData;
      },
    )));
  }
}
