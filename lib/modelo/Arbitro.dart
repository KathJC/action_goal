
import 'package:action_goal/modelo/Persona.dart';

class Arbitro{
  int _id;
  Persona _persona;

  Arbitro();
  factory Arbitro.fromJson(Map<String, dynamic> json) {
    Arbitro a= new Arbitro();
    a.id=json['id'];
    a.persona= Persona.fromJson(json['persona']);
    return a;
  }
  int get id => _id;
  set id(int value) {
    _id = value;
  }

  Persona get persona => _persona;
  set persona(Persona value) {
    _persona = value;
  }


}