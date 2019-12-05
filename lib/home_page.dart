import 'package:ejemplo_provider/providers/cajas_texto_provider.dart';
import 'package:ejemplo_provider/providers/heroes_info.dart';
import 'package:ejemplo_provider/widgets/cajas_texto.dart';
import 'package:ejemplo_provider/widgets/super_floatinaction.dart';
import 'package:ejemplo_provider/widgets/super_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final cajasTexto = Provider.of<CajasTextoProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(heroesInfo.heroe),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SuperText(),
          CajasTexto(),
          SizedBox(height: 30),
          Text('Nombre: ' + cajasTexto.nombre),
          Text('Apellidos: ' + cajasTexto.apellidos),
        ],
      ), 
      floatingActionButton: SuperFloatinAction(),
    );
  }
}