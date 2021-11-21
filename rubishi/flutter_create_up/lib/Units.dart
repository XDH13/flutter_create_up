import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Text_Small(String text, Color color, [int wid]) {
  return TextButton(
      onPressed: () {},
      child: Text(
        '$text',
        style: TextStyle(
          fontSize: 15,
          color: color,
        ),
      ));
}

Widget Text_Big(String text, Color color) {
  return TextButton(
      onPressed: () {},
      child: Text(
        '$text',
        style: TextStyle(fontSize: 40, color: color),
      ));
}

Widget Text_Middle(String text, Color color) {
  return TextButton(
      onPressed: () {},
      child: Text(
        '$text',
        style:
            TextStyle(fontSize: 20, color: color, fontWeight: FontWeight.bold),
      ));
}

Widget ListsOfPart(String include) {
  if (include.length > 10) {
    include = include.substring(0, 10) + "...";
  }
  return
    Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
              shape:  MaterialStateProperty.all(
                  BeveledRectangleBorder(borderRadius: BorderRadius.circular(0))
              )
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.system_update_alt_outlined,
                size: 15,
              ),
              Text(
                '$include',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          )),
        SizedBox(height: 3,),
        DecoratedBox(
          decoration:BoxDecoration(
              border:Border.all(color: Colors.grey[200],width: 1.0)
          ),
        ),
      ],

    );
}
