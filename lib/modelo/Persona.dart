
import 'package:action_goal/modelo/Lugar.dart';

class Persona{
  int _id;
  String _nombres;
  String _apellidos;
  int _edad;
  double _altura;
  String _dui;
  String _nit;
  Lugar _lugar;


  Persona();
  factory Persona.fromJson(Map<String, dynamic> json) {
    Persona p= new Persona();
    p.id=json['id'];
    p.nombres=json['nombres'];
    p.apellidos=json['apellidos'];
    p.edad=json['edad'];
    p.altura=json['altura'];
    p.dui=json['dui'];
    p.nit=json['nit'];
    p.lugar= Lugar.fromJson(json['lugar']);
    return p;
  }

  int get id => _id;
  set id(int value) {
    _id = value;
  }


  String get nombres => _nombres;

  set nombres(String value) {
    _nombres = value;
  }

  Lugar get lugar => _lugar;
  set lugar(Lugar value) {
    _lugar = value;
  }

  String get nit => _nit;
  set nit(String value) {
    _nit = value;
  }

  String get dui => _dui;
  set dui(String value) {
    _dui = value;
  }


  double get altura => _altura;

  set altura(double value) {
    _altura = value;
  }

  int get edad => _edad;
  set edad(int value) {
    _edad = value;
  }


  String get apellidos => _apellidos;
  set apellidos(String value) {
    _apellidos = value;
  }
}