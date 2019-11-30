import 'dart:async';
import 'package:flutter/material.dart';


class Estadisticas extends StatefulWidget {
  @override
  _EstadisticasState createState() => _EstadisticasState(
  );
}
class _EstadisticasState extends State<Estadisticas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('images/pel2.jpg'), fit: BoxFit.cover
          )
      ),
      padding: EdgeInsets.only(left: 5.0, top: 15.0, right: 5.0),
      alignment: Alignment.topCenter,
      //color: Colors.white70,
      child: RefreshIndicator(
        child: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Text("GOLES",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold, fontSize: 20.0,
                      )),
                  Table(
                    children: _list1(),
                    border: TableBorder(
                        right: BorderSide(
                            color: Colors.white70,
                            style: BorderStyle.solid,
                            width: 2.0),
                        left: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0),
                        bottom: BorderSide(
                            color: Colors.black, style: BorderStyle.none, width: 2.0),
                        top: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0)),
                  ),
                  Text(""),
                  Text("ASISTENCIAS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20,
                      )),
                  Table(
                    children: _list2(),
                    border: TableBorder(
                        right: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0),
                        left: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0),
                        bottom: BorderSide(
                            color: Colors.black, style: BorderStyle.none, width: 2.0),
                        top: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0)),
                  ),
                  Text(""),
                  Text("TARJETAS AMARILLAS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0,
                      )),
                  Table(
                    children: _list3(),
                    border: TableBorder(
                        right: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0),
                        left: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0),
                        bottom: BorderSide(
                            color: Colors.black, style: BorderStyle.none, width: 2.0),
                        top: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0)),
                  ),
                  Text(""),
                  Text("TARJETAS ROJAS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20.0,
                      )),
                  Table(
                    children: _list4(),
                    border: TableBorder(
                        right: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0),
                        left: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0),
                        bottom: BorderSide(
                            color: Colors.black, style: BorderStyle.none, width: 2.0),
                        top: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0)),
                  ),
                ]
            )
        ), onRefresh: (

          )
      async {
        Future<Null> refresh() async {
          final duracion = Duration(seconds: 20);
          new Timer(duracion, (){
            _EstadisticasState();
          });
          if(mounted){
            setState(() {
            });
          }
          return Future.delayed(duracion);
        }
      },
      ),


    );

  }

  List<TableRow> _list1() {
    List<TableRow> l = new List<TableRow>(
    );
    l.add(TableRow(
        children: <Widget>[
          Center(
            child: Text(
              "JUGADORES",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text("GOLES",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),
        ],
        decoration: BoxDecoration(
          color: Colors.grey,
        )));
    for (var i = 0; i <= 5; i++) {
      l.add(TableRow(
          children: <Widget>[
            Center(
              child: Text(
                "J121",
              ),
            ),
            Text("11" + i.toString(), textAlign: TextAlign.center),
          ],
          decoration: BoxDecoration(
            color: Colors.white70,
          )));
    }
    return l;
  }

  List<TableRow> _list2() {
    List<TableRow> l = new List<TableRow>(
    );
    l.add(TableRow(
        children: <Widget>[
          Center(
            child: Text(
              "JUGADORES",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "ASISTENCIA",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
        decoration: BoxDecoration(
          color: Colors.grey,
        )));
    for (var i = 0; i <= 5; i++) {
      l.add(TableRow(
          children: <Widget>[
            Center(
              child: Text(
                "J121",
              ),
            ),
            Text("11" + i.toString(), textAlign: TextAlign.center),
          ],
          decoration: BoxDecoration(
            color: Colors.white70,
          )));
    }
    return l;
  }

  List<TableRow> _list3() {
    List<TableRow> l = new List<TableRow>();
    l.add(TableRow(
        children: <Widget>[
          Center(
            child: Text(
              "JUGADORES",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "TARJETA AMARILLA",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
        decoration: BoxDecoration(
          color: Colors.grey,
        )));
    for (var i = 0; i <= 5; i++) {
      l.add(TableRow(
          children: <Widget>[
            Center(
              child: Text(
                "J121",
              ),
            ),
            Text("11" + i.toString(), textAlign: TextAlign.center),
          ],
          decoration: BoxDecoration(
            color: Colors.white70,
          )));
    }
    return l;
  }

  List<TableRow> _list4() {
    List<TableRow> l = new List<TableRow>();
    l.add(TableRow(
        children: <Widget>[
          Center(
            child: Text(
              "JUGADORES",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "TARJETA ROJA",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
        decoration: BoxDecoration(
          color: Colors.grey,
        )));
    for (var i = 0; i <= 5; i++) {
      l.add(TableRow(
          children: <Widget>[
            Center(
              child: Text(
                "J121",
              ),
            ),
            Text(
              "11" + i.toString(),
              textAlign: TextAlign.center,
            ),
          ],
          decoration: BoxDecoration(
            color: Colors.white70,
          )));
    }
    return l;
  }


}
