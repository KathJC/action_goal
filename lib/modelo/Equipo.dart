
import 'package:action_goal/modelo/Lugar.dart';

class Equipo{
  int _id;
  String _nombre;
  String _logo;
  Lugar _lugar;

  Equipo();
  factory Equipo.fromJson(Map<String, dynamic> json) {
    Equipo e= new Equipo();
    e.id=json['id'];
    e.nombre=json['nombre'];
    e.logo=json['logo'];
    e.lugar= Lugar.fromJson(json['lugar']);
    return e;
  }
  int get id => _id;

  set id(int value) {
    _id = value;
  }
  String get nombre => _nombre;
  set nombre(String value) {
    _nombre = value;
  }

  String get logo => _logo;

  set logo(String value) {
    _logo = value;
  }

  Lugar get lugar => _lugar;

  set lugar(Lugar value) {
    _lugar = value;
  }
}