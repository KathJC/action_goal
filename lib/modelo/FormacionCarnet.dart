

import 'package:action_goal/modelo/Carnet.dart';
import 'package:action_goal/modelo/Formacion.dart';

class FormacionCarnet{

  int _id;
  bool _titular;
  Carnet _jugador;
  Formacion _formacion;

  FormacionCarnet();
  factory FormacionCarnet.fromJson(Map<String, dynamic> json) {
    FormacionCarnet fc= new FormacionCarnet();
    fc.id=json['id'];
    fc.titular=json['titular'];
    fc.jugador = Carnet.fromJson(json['jugador']);
    fc.formacion = Formacion.fromJson(json['formacion']);
    return fc;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  bool get titular => _titular;

  set titular(bool value) {
    _titular = value;
  }

  Carnet get jugador => _jugador;

  set jugador(Carnet value) {
    _jugador = value;
  }

  Formacion get formacion => _formacion;

  set formacion(Formacion value) {
    _formacion = value;
  }


}
