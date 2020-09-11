import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_toolchain/models/graphql/graphql_api.graphql.dart';

class Simple extends StatefulWidget {
  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple example'),
      ),
      body: Query(
        options: QueryOptions(
          fetchPolicy: FetchPolicy.cacheAndNetwork,
          document: CompaniesDataQuery().document,
        ),
        builder: (
          QueryResult result, {
          Future<QueryResult> Function() refetch,
          FetchMore fetchMore,
        }) {
          print(result.source);
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final allCompanies =
              CompaniesData$Query.fromJson(result.data).allCompanies;

          return ListView.builder(
            itemBuilder: (_, index) {
              return ListTile(
                leading: Text(_counter.toString()),
                title: Text(allCompanies[index].name),
                subtitle: Text(allCompanies[index].industry),
                trailing: FlatButton.icon(
                    onPressed: () => setState(() => _counter++),
                    icon: Icon(Icons.plus_one),
                    label: Text('')),
              );
            },
            itemCount: allCompanies.length,
          );
        },
      ),
    );
  }
}
