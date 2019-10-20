import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:pruebaeco/router_constants.dart';
import 'package:pruebaeco/usuario_detalle.dart';





class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _counter; 
  String value="";

  

  @override
  Widget build(BuildContext context) {

   
    return Scaffold(
     body: Center(
       child: Container(
         child: Text("hola")
         /* child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("SCANEA EL QR",style:  TextStyle( fontSize: 30.0),),
             Text("El valor escaneado es: " ,style:  TextStyle( fontSize: 25.0),),
             Text(value ,textAlign: TextAlign.center,style:  TextStyle( fontSize: 20.0, color: Colors.red ), )
             
           ],
         ) */
       ),
     ),
     
  // BOTON PARA LANZAR EL LECTOR DE  QR
    floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: FloatingActionButton(
          
          onPressed: obtenerValorQR,
          child: Icon(Icons.settings_overscan,),
          backgroundColor:Color(0xFF56AB2F)
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // This trailing comma makes auto-formatting nicer for build methods.

    );
  }

 Future obtenerValorQR() async{

    _counter= await FlutterBarcodeScanner.scanBarcode("#004297", "Cancel", true);
    setState(() {
      value=_counter;
     
    });
    if (value == null) {
      Navigator.pushNamed(context, HomePageRoute);
      
    } else {
      Navigator.pushNamed(context, DetalleUsuarioRoute, arguments: value);

    }
    

  } 



}

