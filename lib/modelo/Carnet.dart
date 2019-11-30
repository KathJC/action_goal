

import 'package:action_goal/modelo/EquipoTemporada.dart';
import 'package:action_goal/modelo/Jugador.dart';

class Carnet {
  int _id;
  EquipoTemporada _equipo;
  Jugador _jugador;
  int _dorsal;

  Carnet();
  factory Carnet.fromJson(Map<String, dynamic> json) {
    Carnet car = new Carnet();
    car.id = json['id'];
    car.equipo= EquipoTemporada.fromJson(json['equipo']);
    car.jugador= Jugador.fromJson(json['jugador']);
    car.dorsal = json['dorsal'];
    return car;
  }

  int get dorsal => _dorsal;

  set dorsal(int value) {
    _dorsal = value;
  }

  Jugador get jugador => _jugador;

  set jugador(Jugador value) {
    _jugador = value;
  }

  EquipoTemporada get equipo => _equipo;

  set equipo(EquipoTemporada value) {
    _equipo = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


}