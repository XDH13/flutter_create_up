import 'dart:html';

import 'package:flutter/material.dart';
class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.architecture_rounded),
        Text("双核"),
      ],
    );
  }
}
