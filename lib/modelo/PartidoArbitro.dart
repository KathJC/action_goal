

import 'package:action_goal/modelo/Arbitro.dart';
import 'package:action_goal/modelo/Partido.dart';

class PartidoArbitro{

  int _id;
  Arbitro _arbitro;
  Partido _partido;

  PartidoArbitro();
  factory PartidoArbitro.fromJson(Map<String, dynamic> json) {
    PartidoArbitro pa = new PartidoArbitro();
    pa.id = json['id'];
    pa.arbitro = Arbitro.fromJson(json['arbitro']);
    pa.partido= Partido.fromJson(json['partido']);
    return pa;
  }
  int get id => _id;

  set id(int value) {
    _id = value;
  }

  Arbitro get arbitro => _arbitro;

  set arbitro(Arbitro value) {
    _arbitro = value;
  }

  Partido get partido => _partido;

  set partido(Partido value) {
    _partido = value;
  }


}