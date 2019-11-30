

import 'package:action_goal/modelo/Partido.dart';
import 'package:action_goal/modelo/Temporada.dart';

class Jornada{
  int _id;
  int _numero;
  int _estado;
  Temporada _temporada;
  List<Partido> partidos;
  Jornada();
  factory Jornada.fromJson(Map<String, dynamic> json) {
    Jornada j= new Jornada();
    j.id=json['id'];
    j.numero=json['numero'];
    j.estado=json['estado'];
    j.temporada=Temporada.fromJson(json);
    var list = json['partidoList'] as List;
    List<Partido> partidoList = list.map((i) => Partido.fromJson(i)).toList();
    j.partidos=partidoList;
    return j;
  }
  Temporada get temporada => _temporada;

  set temporada(Temporada value) {
    _temporada = value;
  }

  int get estado => _estado;

  set estado(int value) {
    _estado = value;
  }

  int get numero => _numero;

  set numero(int value) {
    _numero = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


}