class Lugar{
  int _id;
  String _nombre;
  String _direccion;

  Lugar();
  factory Lugar.fromJson(Map<String, dynamic> json) {
    Lugar lu= new Lugar();
    lu.id=json['id'];
    lu.nombre=json['nombre'];
    lu.direccion=json['direccion'];
    return lu;
  }

  String get direccion => _direccion;
  set direccion(String value) {
    _direccion = value;
  }
  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


}