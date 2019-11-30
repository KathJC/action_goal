import 'package:action_goal/pages/Posiciones.dart';
import 'package:action_goal/pages/equipo.dart';
import 'package:action_goal/pages/estadisticas.dart';
import 'package:action_goal/pages/partidos.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
   int indexTap = 0;
    final List<Widget> widgetsChildren = [
    Partidos(),
    Estadisticas(),
    Posiciones(),
    EquipoPage()
  ];

  void onTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   /* Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          ExactAssetImage('images/Celis.png'),
          ExactAssetImage('images/Centro.png'),
          ExactAssetImage('images/Cruzeiro.png'),
          ExactAssetImage('images/Hernandez.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.deepOrangeAccent,
        indicatorBgPadding: 4.0,
      )
      );*/
  /* return Container(
        child: new Stack(children: <Widget>[
        new Container(
        child: new Image.network('https://img-cdn.hipertextual.com/files/2019/06/hipertextual-estas-son-imagenes-que-se-juegan-premio-mejor-astrofotografo-ano-2019530966.jpg?strip=all&lossy=1&quality=57&resize=740%2C490&ssl=1'),
       // color: Colors.lightGreen,
    ),*/

    return new Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title: Text('<<       ACTION GOAL     >>'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10.0),
            )),
        //flexibleSpace: Home(),
        backgroundColor: Colors.green,
      ),
      body: widgetsChildren[indexTap],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time, color: Colors.black,),
              title: Text('JORNADAS'),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart, color: Colors.black,),
              title: Text('ESTADISTICAS'),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart,color: Colors.black,),
              title: Text('TABLA'),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.recent_actors, color: Colors.black,),
              title: Text('EQUIPO'),
              backgroundColor: Colors.green)
        ],
        onTap: onTapped,
      ),

    );

  /* body: new ListView(
        children: <Widget>[
        image_carousel*/
  }
}

