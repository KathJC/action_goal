import 'dart:async';
import 'package:action_goal/data/gets.dart';
import 'package:action_goal/modelo/Tabla.dart';
import 'package:flutter/material.dart';


class Posiciones extends StatefulWidget {
  @override
  _PosicionesState createState() => _PosicionesState();
}
class _PosicionesState extends State<Posiciones> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('images/ta1.jpg'), fit: BoxFit.fill)),
      padding: EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0),
      alignment: Alignment.topCenter,
      child: RefreshIndicator(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: _widget(),
          ),
        ),
        onRefresh: _refresh,
      ),
    );
  }

  Widget _widget() {
    return Container(
      color: Colors.white38,
      alignment: Alignment.center,
      child: FutureBuilder<List<Tabla>>(
        future: menuProvider.getListTabla(),
        initialData: [],
        builder: (context, snapshot) {
          List<Tabla> data = snapshot.data;
          return _table(data);
        },
      ),
    );
  }

  List<DataColumn> _columns() {
    List<DataColumn> col = new List<DataColumn>();
    var nombre = {
      "Nº",
      "EQ",
      "Puntos",
      "PJ",
      "PG",
      "PE",
      "PP",
      "GF",
      "GC",
    };
    for (var n in nombre) {
      col.add(DataColumn(
          label: Text(
        n,
        style: TextStyle(color: Colors.black, fontSize: 15.0),
      )));
    }
    return col;
  }

  List<DataRow> filas(List<Tabla> tablas) {
    int num = 0;
    List<DataRow> filas = new List<DataRow>();
    tablas.forEach((x) {
      num++;
      filas.add(DataRow(cells: _cells(x, num)));
    });
    return filas;
  }

  List<DataCell> _cells(Tabla t, int index) {
    List<DataCell> list = new List<DataCell>();
    list.add(DataCell(Text(index.toString())));
    list.add(DataCell(Text(t.equipo.equipo.nombre)));
    list.add(DataCell(Text(t.puntos.toString())));
    list.add(DataCell(Text(t.pj.toString())));
    list.add(DataCell(Text(t.pg.toString())));
    list.add(DataCell(Text(t.pe.toString())));
    list.add(DataCell(Text(t.pp.toString())));
    list.add(DataCell(Text(t.gf.toString())));
    list.add(DataCell(Text(t.gc.toString())));
    return list;
  }

  Future<Null> _refresh() async {
    final duracion = Duration(seconds: 4);
    new Timer(duracion, () {
      _widget();
    });
    if (mounted) {
      setState(() {});
    }
    return Future.delayed(duracion);
  }

  Widget _table(List<Tabla> list) {
    return DataTable(
      columns: _columns(),
      rows: filas(list),
      sortColumnIndex: 0,
      columnSpacing: 20.0,
    );
  }
}
