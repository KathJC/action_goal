import 'dart:typed_data';

import 'package:action_goal/modelo/Persona.dart';


class Jugador {
  int _id;
  String _posicion;
  String _foto;
  Persona _persona;

  Jugador();

  factory Jugador.fromJson(Map<String, dynamic> json) {
    Jugador j = new Jugador();
    j.id = json['id'];
    j._foto = json['foto'];
    j._posicion = json['posicion'];
    j.persona = Persona.fromJson(json['persona']);
    return j;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get posicion => _posicion;

  set posicion(String value) {
    _posicion = value;
  }

  Persona get persona => _persona;

  set persona(Persona value) {
    _persona = value;
  }

  String get foto => _foto;

  set foto(String value) {
    _foto = value;
  }
}
