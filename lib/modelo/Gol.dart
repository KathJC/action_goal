

import 'package:action_goal/modelo/Carnet.dart';
import 'package:action_goal/modelo/Partido.dart';

class Gol {
  int _id;
  DateTime _hora;
  String _forma;
  bool _tipo;
  Carnet _carnet;
  Partido _partido;

  Gol();
  factory Gol.fromJson(Map<String, dynamic> json) {
    Gol g= new Gol();
    g.id=json['id'];
    g.hora=json['hora'];
    g.forma=json['forma'];
    g.tipo=json['tipo'];
    g.carnet = Carnet.fromJson(json['carnet']);
    g.partido = Partido.fromJson(json['partido']);
    return g;
  }

  int get id => _id;
  set id(int value) {
    _id = value;
  }

  DateTime get hora => _hora;
  set hora(DateTime value) {
    _hora = value;
  }

  String get forma => _forma;
  set forma(String value) {
    _forma = value;
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