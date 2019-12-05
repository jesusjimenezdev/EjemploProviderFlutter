import 'package:ejemplo_provider/providers/cajas_texto_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CajasTexto extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final cajasTexto = Provider.of<CajasTextoProvider>(context);

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(   
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Nombre'
            ),
            onChanged: (value) {
              cajasTexto.nombre = value;
            },
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Apellidos'
            ),
            onChanged: (value) {
              cajasTexto.apellidos = value;
            },
          ),
        ],
      ),
    );
  }
}