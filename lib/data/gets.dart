import 'dart:convert';
import 'package:action_goal/modelo/Equipo.dart';
import 'package:action_goal/modelo/Jornada.dart';
import 'package:action_goal/modelo/Jugador.dart';
import 'package:action_goal/modelo/Tabla.dart';
//import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;



class _MenuProvider {
  final path = 'http://192.168.43.1:8080';

  _MenuProvider();

  Future<List<Equipo>> getListE() async {
    final response = await http.get("http://192.168.43.1:8080/equipo/All");
      //("$path/equipo/All");
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((x) => Equipo.fromJson(x)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<Jugador>> getListJ() async {
    final response = await http.get("http://192.168.43.138:8080/Jugador/All");
      //("$path/Jugador/All");
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((x) => Jugador.fromJson(x)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<Jornada>> getListJornada() async {
    final response = await http.get ("http://192.168.43.138:8080/jornada/All");
      //("$path/jornada/All");
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((x) => Jornada.fromJson(x)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<List<Tabla>> getListTabla() async {
    final response = await http.get("http://192.168.43.138:8080/tabla/All");
      //("$path/tabla/All");
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((x) => Tabla.fromJson(x)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }
}

final menuProvider = new _MenuProvider();
