

import 'package:action_goal/modelo/EquipoTemporada.dart';
import 'package:action_goal/modelo/Horario.dart';
import 'package:action_goal/modelo/Jornada.dart';

class Partido{
  int _id;
  bool _estado;
  Jornada _jornada;
  EquipoTemporada _equipo1;
  EquipoTemporada _equipo2;
  Horario _horario;
  DateTime _fecha;
  Partido();
  factory Partido.fromJson(Map<String, dynamic> json) {
    Partido partido=new Partido();
    partido.id=json['id'];
    partido.equipo1=EquipoTemporada.fromJson(json['equipo1']);
    partido.equipo2=EquipoTemporada.fromJson(json['equipo2']);
    partido.estado=json['estado'];
    partido.horario=Horario.fromJson(json['horario']);
    partido.fecha=json['fecha'];
    return partido;
  }

  DateTime get fecha => _fecha;

  set fecha(DateTime value) {
    _fecha = value;
  }

  Horario get horario => _horario;

  set horario(Horario value) {
    _horario = value;
  }

  EquipoTemporada get equipo2 => _equipo2;

  set equipo2(EquipoTemporada value) {
    _equipo2 = value;
  }

  EquipoTemporada get equipo1 => _equipo1;

  set equipo1(EquipoTemporada value) {
    _equipo1 = value;
  }

  Jornada get jornada => _jornada;

  set jornada(Jornada value) {
    _jornada = value;
  }

  bool get estado => _estado;

  set estado(bool value) {
    _estado = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

}