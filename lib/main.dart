import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_toolchain/bloc.dart';
import 'package:graphql_toolchain/graphql_provider.dart';
import 'package:graphql_toolchain/simple.dart';

import 'models/graphql/graphql_api.graphql.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  runApp(MyApp());
}

String get host {
  if (Platform.isAndroid) {
    return '10.0.2.2';
  } else {
    return 'localhost';
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphqlProvider(
      uri: 'http://$host:9002/graphql',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          'simple': (_) => Simple(),
          'bloc': (_) => Bloc(),
        },
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final test = CompaniesPaginatedDataArguments(
      pagination: Nullable<PaginationInput>(
        PaginationInput(limit: Nullable<int>(25)),
      ),
    ).toJson();

    // final json = {
    //   "pagination": {
    //     "limit": 25,
    //     "offset": 0,
    //   }
    // };
    //
    // final fromJson = CompaniesPaginatedDataArguments.fromJson(json);
    //
    print(test);

    return Scaffold(
      appBar: AppBar(
        title: Text("Select example"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Simple example'),
            onTap: () => Navigator.of(context).pushNamed('simple'),
          ),
          Divider(),
          ListTile(
            title: Text('BLOC example'),
            onTap: () => Navigator.of(context).pushNamed('bloc'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
