import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_toolchain/bloc.dart';
import 'package:graphql_toolchain/graphql_provider.dart';
import 'package:graphql_toolchain/simple.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  runApp(const MyApp());
}

String get host {
  if (Platform.isAndroid) {
    return '10.0.2.2';
  } else {
    return 'localhost';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          'simple': (_) => const Simple(),
          'bloc': (_) => const Bloc(),
        },
        home: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select example"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Simple example'),
            onTap: () => Navigator.of(context).pushNamed('simple'),
          ),
          const Divider(),
          ListTile(
            title: const Text('BLOC example'),
            onTap: () => Navigator.of(context).pushNamed('bloc'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
