

import 'package:action_goal/modelo/EquipoTemporada.dart';
import 'package:action_goal/modelo/Jornada.dart';

class Formacion{
    int _id;
    Jornada _jornada;
    EquipoTemporada _equipo;

    Formacion();
    factory Formacion.fromJson(Map<String, dynamic> json) {
      Formacion fr= new Formacion();
      fr.id=json['id'];
      fr.jornada = Jornada.fromJson(json['jornada']);
      fr.equipo = EquipoTemporada.fromJson(json['equipo']);
      return fr;
    }

    int get id => _id;
    set id(int value) {
      _id = value;
    }

    Jornada get jornada => _jornada;
    set jornada(Jornada value) {
      _jornada = value;
    }

    EquipoTemporada get equipo => _equipo;
    set equipo(EquipoTemporada value) {
      _equipo = value;
    }


}