import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flightwidgets/ArrowIcons.dart';
import 'flightwidgets/Page.dart';
import 'flightwidgets/Plane.dart';
import 'flightwidgets/line.dart';

class flightshow extends StatefulWidget{
  @override
  FlightStepperState createState() => new FlightStepperState();

}

class FlightStepperState extends State<flightshow>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo , Colors.deepPurple]
          )
        ),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              //观察页面上存在的widget
              ArrowIcons(),//固定的
               Plane(),//呼呼呼大飞机，固定的
               line(),//固定的
             //  Pages(),
              //todo 文字下进上出消失
            ],
          ),
        ),///刘海屏与底按钮屏蔽
      ),
    );
  }

}

// Widget ArrowIcons {
//   return
// }