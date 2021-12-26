import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_toolchain/models/graphql/graphql_api.graphql.dart';

class Simple extends StatefulWidget {
  const Simple({Key? key}) : super(key: key);

  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple example'),
      ),
      body: Query(
        options: QueryOptions(
          fetchPolicy: FetchPolicy.cacheAndNetwork,
          document: CompaniesDataQuery().document,
        ),
        builder: (
          result, {
          refetch,
          fetchMore,
        }) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final data = result.data;

          if (data == null) {
            return const Center(
              child: Text('No data'),
            );
          }
          final allCompanies = CompaniesData$Query.fromJson(data).allCompanies;

          if (allCompanies == null) {
            return const Center(
              child: Text('No data'),
            );
          }

          return ListView.builder(
            itemBuilder: (_, index) {
              return ListTile(
                leading: Text(_counter.toString()),
                title: Text(allCompanies[index].name ?? ''),
                subtitle: Text(allCompanies[index].industry ?? ''),
                trailing: FlatButton.icon(
                    onPressed: () => setState(() => _counter++),
                    icon: const Icon(Icons.plus_one),
                    label: const Text('')),
              );
            },
            itemCount: allCompanies.length,
          );
        },
      ),
    );
  }
}
