import 'package:flutter/material.dart';
 

 
class PaginaNoDefinida extends StatelessWidget {
  final String name;

  const PaginaNoDefinida({Key key, this.name}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pagina $name No Definida'),
        ),
        body: Center(
          child: Container(
            child: Text('Pagina No Definida'),
          ),
        ),
      ),
    );
  }
}