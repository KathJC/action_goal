import 'dart:async';
import 'package:action_goal/data/gets.dart';
import 'package:action_goal/modelo/Jornada.dart';
import 'package:action_goal/modelo/Partido.dart';
import 'package:flutter/material.dart';


class Partidos extends StatefulWidget {
  @override
  _PartidosState createState() => _PartidosState();
}

class _PartidosState extends State<Partidos> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: _lista(),
      onRefresh: refresh,
    );
  }

  Future<Null> refresh() async {
    final duracion = Duration(seconds: 4);
    new Timer(duracion, () {
      _lista();
    });
    if (mounted) {
      setState(() {});
    }
    return Future.delayed(duracion);
  }

  Widget _lista() {
    return FutureBuilder<List<Jornada>>(
        future: menuProvider.getListJornada(),
        initialData: [],
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Jornada> data =snapshot.data;
            final List<Widget> jornadas = [];
            data.forEach((da) {
              final widget = Container(
                  child: Center(
                child: Column(
                  verticalDirection: VerticalDirection.down,
                  children: [
                     Text("Jornada " + da.numero.toString(), style:TextStyle(fontSize: 25.0,),textAlign: TextAlign.center,),
                    Column(
                      children: partidos(da.partidos),
                    )
                  ],
                ),
              ));
              jornadas.add(widget);
            });
            return ListView(
              children: jornadas,
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        });
  }

  List<Widget> partidos(List<Partido> partidos) {
    List<Widget> wd = List<Widget>();
    for (Partido p in partidos) {
      Widget w = Center(
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100.0,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        p.equipo1.equipo.logo,
                        height: 50.0,
                        width: 50.0,
                      ),
                      Text(p.equipo1.equipo.nombre),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100.0,
                child: Column(
                  children: <Widget>[
                    Text("HORARIO"),
                    Text(p.horario.dia),
                    Text(p.horario.hora),
                  ],
                ),
              ),
              Container(
                width: 100.0,
                child: Column(
                  children: <Widget>[
                    Image.network(
                      p.equipo2.equipo.logo,
                      height: 50.0,
                      width: 50.0,
                    ),
                    Text(p.equipo2.equipo.nombre),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      wd.add(w);
    }
    return wd;
  }
}
