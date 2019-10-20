import 'package:flutter/material.dart';
import 'package:pruebaeco/router_constants.dart';
import 'router.dart' as router;

import 'package:pruebaeco/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePageRoute,
      onGenerateRoute: router.generateRoute,
    );
  }
}
