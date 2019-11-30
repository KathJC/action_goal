

import 'package:action_goal/modelo/Atributo.dart';
import 'package:action_goal/modelo/Jugador.dart';

class JugadorAtributo{
  int _id;
  int _cantidad;
  Atributo _atributo;
  Jugador _jugador;

  JugadorAtributo();
  factory JugadorAtributo.fromJson(Map<String, dynamic> json) {
    JugadorAtributo ja= new JugadorAtributo();
    ja.id=json['id'];
    ja.cantidad=json['nombre'];
    ja.atributo=Atributo.fromJson(json['atributo']);
    ja.jugador= Jugador.fromJson(json['jugador']);
    return ja;
  }
  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get cantidad => _cantidad;

  set cantidad(int value) {
    _cantidad = value;
  }

  Atributo get atributo => _atributo;

  set atributo(Atributo value) {
    _atributo = value;
  }

  Jugador get jugador => _jugador;

  set jugador(Jugador value) {
    _jugador = value;
  }


}