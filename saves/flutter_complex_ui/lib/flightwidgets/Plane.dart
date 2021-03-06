import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Plane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 40,
        top: 32,
        child: RotatedBox(
          quarterTurns: 2,
          child: Icon(
            Icons.airplanemode_active,
            size: 64,
            color: Colors.white,
          ),
        ));
  }
}
