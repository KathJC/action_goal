import 'dart:async';
import 'package:action_goal/data/gets.dart';
import 'package:action_goal/modelo/Equipo.dart';
import 'package:flutter/material.dart';



class EquipoPage extends StatefulWidget {
  @override
  _EquipoPageState createState() => _EquipoPageState();
}
class _EquipoPageState extends State<EquipoPage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      //child: SingleChildScrollView(
      child: _lista(),
      // ),
      onRefresh: refresh,
    );
  }
  Future<Null> refresh() async {
    final duracion = Duration(seconds: 4);
    new Timer(duracion, (){
      _lista();
    });
    if(mounted){
      setState(() {
      });
    }
    return Future.delayed(duracion);
  }
  Widget _lista() {
    return FutureBuilder<List<Equipo>>(
        future: menuProvider.getListE(),
        initialData: [],
        builder: (context,  snapshot) {
          if (snapshot.hasData) {
            List<Equipo> data = snapshot.data;
            final List<Widget> equipos = [];
            data.forEach((da) {
              final widget = Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 350,
                        width: 325,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(da.logo),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 335, 15, 15),
                        height: 50,
                        width: 295,
                        color: Colors.black38,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            da.nombre,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) => ComicDetailPage(uuid: da['uuid'])
                    //));
                  },
                ),
              );
              equipos.add(widget);
            });
            return ListView(
              children: equipos,
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        }
    );
  }
}