


import 'package:action_goal/modelo/Equipo.dart';
import 'package:action_goal/modelo/Jugador.dart';
import 'package:action_goal/modelo/Temporada.dart';

class EquipoTemporada {
  int _id;
  Equipo _equipo;
  Jugador _representante;
  Temporada _temporada;

  EquipoTemporada();
  factory EquipoTemporada.fromJson(Map<String, dynamic> json) {
    EquipoTemporada et = new EquipoTemporada();
    et.id = json['id'];
    et.equipo = Equipo.fromJson(json['equipo']);
    et.representante = Jugador.fromJson(json['representante']);
    et.temporada = Temporada.fromJson(json['temporada']);
    return et;
  }

  Equipo get equipo => _equipo;

  int get id => _id;

  set id(int value) {
    _id = value;
  }
  set equipo(Equipo value) {
    _equipo = value;
  }

  Jugador get representante => _representante;
  set representante(Jugador value) {
    _representante = value;
  }

  Temporada get temporada => _temporada;

  set temporada(Temporada value) {
    _temporada = value;
  }
}