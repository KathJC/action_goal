

import 'package:action_goal/modelo/Carnet.dart';
import 'package:action_goal/modelo/Partido.dart';

class Cambio{
  int _id;
  DateTime _hora;
  String _razon;
  Carnet _saliente;
  Carnet _entrante;
  Partido _partido;

  Cambio();
  factory Cambio.fromJson(Map<String, dynamic> json) {
    Cambio c= new Cambio();
    c.id=json['id'];
    c.hora=json['hora'];
    c.razon=json['razon'];
    c.saliente= Carnet.fromJson(json['saliente']);
    c.entrante= Carnet.fromJson(json['entrante']);
    c.partido= Partido.fromJson(json['partido']);
    return c;

  }
  int get id => _id;
  set id(int value) {
    _id = value;
  }

  DateTime get hora => _hora;
  set hora(DateTime value) {
    _hora = value;
  }

  String get razon => _razon;
  set razon(String value) {
    _razon = value;
  }

  Carnet get saliente => _saliente;
  set saliente(Carnet value) {
    _saliente = value;
  }

  Carnet get entrante => _entrante;
  set entrante(Carnet value) {
    _entrante = value;
  }

  Partido get partido => _partido;
  set partido(Partido value) {
    _partido = value;
  }


}