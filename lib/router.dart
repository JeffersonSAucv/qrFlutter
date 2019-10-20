import 'package:flutter/material.dart';
import 'package:pruebaeco/home_page.dart';
import 'package:pruebaeco/pagina_nodefinida.dart';
import 'package:pruebaeco/router_constants.dart';
import 'package:pruebaeco/usuario_detalle.dart';

Route<dynamic> generateRoute( RouteSettings settings){
  switch (settings.name) {
    case HomePageRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    
    
    case DetalleUsuarioRoute:
    var argument = settings.arguments;
    return MaterialPageRoute(builder: (context) => UsuarioDetalle(argmument:  argument,));
    
    
    default:
    return MaterialPageRoute(builder: (context) => PaginaNoDefinida(name: settings.name,));
  }


}