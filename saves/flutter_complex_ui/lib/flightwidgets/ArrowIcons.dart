import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class ArrowIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 8,
        bottom: 0,
        child: Column(
          children: <Widget>[
            IconButton(
              icon:Icon( Icons.arrow_upward_sharp),
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_downward_sharp,
                color: Colors.white,
              ),
              
            )
          ],
        ));
  }
}
