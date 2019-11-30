class Atributo{

  int _id;
  String _nombre;

  Atributo();
  factory Atributo.fromJson(Map<String, dynamic> json) {
    Atributo atr= new Atributo();
    atr.id=json['id'];
    atr.nombre=json['nombre'];
    return atr;
  }
  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }


}