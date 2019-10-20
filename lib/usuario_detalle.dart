import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;


class UsuarioDetalle extends StatefulWidget {
  final  String argmument;
  const UsuarioDetalle({Key key, this.argmument}) : super(key: key);
  @override
  _UsuarioDetalleState createState() => _UsuarioDetalleState();
}

 //mejoras

class _UsuarioDetalleState extends State<UsuarioDetalle> {

 /*  Future<String> obtenerUser() async {
  final response = await http.get('https://swapi.co/api/people/${widget.argmument}'); //obtener datos del cualquier API
  return json.decode(response.body);
  } */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
        child: Column(
          children: <Widget>[
            Text("EL SCAN DICER " , style: TextStyle(color:  Colors.black, fontSize:  25),),
            Text(widget.argmument, style: TextStyle(color:  Colors.red, fontSize:  30),)
          ],
          ) /* FutureBuilder(
        future: obtenerUser(),
        
        builder: (BuildContext context, AsyncSnapshot snapshot) {
           if (snapshot.hasError) return Text('No se econtro el usuario');
          return snapshot.hasData
                ? _buildItem(snapshot.data)
                : Center(child: CircularProgressIndicator(),);
        },
        ),
        ), */
      ),
      ),
    );
  }


/* Widget _buildItem(List list){
     //LISTAR DATOS DE UN USUARIO
    return ListView.builder(
      itemCount:  list.length,
      itemBuilder: (BuildContext context , int i){
        return Card(
            child:  ListTile(
              title: Text(list[i]['name']),
              subtitle: Text(list[i]['height']),
              trailing: Text(list[i]['air_color']),
              leading: Text(list[i]['gender']),
            ),
        );
      },
    );
  } */

}


























 
/* class UsuarioDealle extends StatefulWidget {
  UsuarioDealle({Key key}) : super(key: key);

  _UsuarioDealleState createState() => _UsuarioDealleState();
}

class _UsuarioDealleState extends State<UsuarioDealle> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: obtenerUser(),
        
        builder: (BuildContext context, AsyncSnapshot snapshot) {
           if (snapshot.hasError) return Text('No data found!');
          return snapshot.hasData
                ? _buildItem(snapshot.data)
                : Center(child: CircularProgressIndicator(),);
        },
      );
  }

  Widget _buildItem(List list){
     //LISTAR DATOS DE UN USUARIO
    return ListView.builder(
      itemCount:  list.length,
      itemBuilder: (BuildContext context , int i){
        return Card(
            child:  ListTile(
              title: Text(list[i]['id']),
              subtitle: Text(list[i]['nombre']),
              trailing: Text(list[i]['apellidos']),
              leading: Text(list[i]['puntos']),
            ),
        );
      },
    );
  }
} */