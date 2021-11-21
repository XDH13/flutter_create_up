import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SearchState();


}

class SearchState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TextField(
        style: TextStyle(
          fontSize: 40,
        ),
        cursorColor: Colors.orange,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search)
        ),
      ),
    );
  }
}
