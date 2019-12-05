import 'package:flutter/material.dart';

class CajasTextoProvider with ChangeNotifier {

  String _nombre = 'Pedro';
  String _apellidos = 'Garcia';

  get nombre {
    return this._nombre;
  }

  set nombre(String nombre) {
    this._nombre = nombre;
    notifyListeners();
  }

  get apellidos {
    return this._apellidos;
  }

  set apellidos(String apellidos) {
    this._apellidos = apellidos;
    notifyListeners();
  }
}