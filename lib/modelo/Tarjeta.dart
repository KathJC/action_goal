

import 'package:action_goal/modelo/Carnet.dart';
import 'package:action_goal/modelo/Partido.dart';

class Tarjeta{

  int _id;
  DateTime _hora;
  bool _tipo;
  Carnet _carnet;
  Partido _partido;

 Tarjeta();
  factory Tarjeta.fromJson(Map<String, dynamic> json) {
    Tarjeta t = new Tarjeta();
    t.id = json['id'];
    t.hora = json['hora'];
    t.tipo = json['tipo'];
    t.carnet = Carnet.fromJson(json['carnet']);
    t.partido = Partido.fromJson(json['partido']);
    return t;
  }
  int get id => _id;

  set id(int value) {
    _id = value;
  }

  DateTime get hora => _hora;

  set hora(DateTime value) {
    _hora = value;
  }

  bool get tipo => _tipo;

  set tipo(bool value) {
    _tipo = value;
  }

  Carnet get carnet => _carnet;

  set carnet(Carnet value) {
    _carnet = value;
  }

  Partido get partido => _partido;

  set partido(Partido value) {
    _partido = value;
  }


}