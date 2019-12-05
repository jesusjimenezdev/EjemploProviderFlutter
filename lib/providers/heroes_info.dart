import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {

  String _heroe = 'Capitan america';
  Color colorBase = Colors.blue;

  get heroe {
    return this._heroe;
  }

  set heroe(String nombre) {
    this._heroe = nombre;
    this.colorBase = (nombre == 'Hulk') ? Colors.green : Colors.blue;
    notifyListeners();
  }
}