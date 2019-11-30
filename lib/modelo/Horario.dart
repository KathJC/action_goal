class Horario {
  int _id;
  String _hora;
  String _dia;
  int jerarquia;

  Horario();

  factory Horario.fromJson(Map<String, dynamic> json) {
    Horario e = new Horario();
    e.id = json['id'];
    e.hora = json['hora'];
    e.dia = json['dia'];
    return e;
  }

  String get dia => _dia;

  set dia(String value) {
    _dia = value;
  }
  String get hora => _hora;

  set hora(String value) {
    _hora = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

}