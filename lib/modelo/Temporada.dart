class Temporada {
  int _id;
  int _numero;
  String _fecha_ini;
  int _estado;

  Temporada();
  factory Temporada.fromJson(Map<String, dynamic> json) {
    Temporada e = new Temporada();
    e.id = json['id'];
    e.numero = json['numero'];
    e.fecha_ini = json['fechaIni'];
    e.estado = json['estado'];
    return e;
  }


  int get estado => _estado;

  set estado(int value) {
    _estado = value;
  }

  String get fecha_ini => _fecha_ini;

  set fecha_ini(String value) {
    _fecha_ini = value;
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