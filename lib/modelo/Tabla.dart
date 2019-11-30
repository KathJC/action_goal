

import 'package:action_goal/modelo/EquipoTemporada.dart';
import 'package:action_goal/modelo/Temporada.dart';

class Tabla{
  int _id;
  int _pj;
  int _pg;
  int _puntos;
  int _pe;
  int _pp;
  int _gf;
  int _gc;
  EquipoTemporada _equipo;
  Temporada _temporada;

  Tabla();
  factory Tabla.fromJson(Map<String, dynamic> json) {
    Tabla tbl = new Tabla();
    tbl.id = json['id'];
    tbl.pj = json['pj'];
    tbl.pg = json['pg'];
    tbl.puntos = json['puntos'];
    tbl.pe = json['pe'];
    tbl.pp = json['pp'];
    tbl.gf = json['gf'];
    tbl.gc = json['gc'];
    tbl.equipo = EquipoTemporada.fromJson(json['equipo']);
    tbl.temporada = Temporada.fromJson(json['temporada']);
    return tbl;
  }

  int get id => _id;
  set id(int value) {
    _id = value;
  }

  int get pj => _pj;
  set pj(int value) {
    _pj = value;
  }

  int get pg => _pg;
  set pg(int value) {
    _pg = value;
  }

  int get puntos => _puntos;
  set puntos(int value) {
    _puntos = value;
  }

  int get gc => _gc;
  set gc(int value) {
    _gc = value;
  }

  int get gf => _gf;
  set gf(int value) {
    _gf = value;
  }

  int get pp => _pp;
  set pp(int value) {
    _pp = value;
  }

  int get pe => _pe;
  set pe(int value) {
    _pe = value;
  }
  Temporada get temporada => _temporada;

  set temporada(Temporada value) {
    _temporada = value;
  }

  EquipoTemporada get equipo => _equipo;

  set equipo(EquipoTemporada value) {
    _equipo = value;
  }

}