import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:work_work/pref/PersonalBean.dart';

class UserPage extends StatefulWidget {
  final arguments;

  @override
  State<StatefulWidget> createState() =>
      UserPageState(arguments: this.arguments);

  @override
  const UserPage({Key key, this.arguments}) : super(key: key);
}

class UserPageState extends State<UserPage> {
  personalbean arguments;

  UserPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.name.toString()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
              children: [
                Text('身份证号',style: TextStyle(fontSize: 30,color: Colors.black),),
                Text('${arguments.cardnumber}',style: TextStyle(fontSize: 30,color: Colors.blue))]),
          Row(
              children: [
                Text('接种日期',style: TextStyle(fontSize: 30,color: Colors.black),),
                Text('${arguments.access}',style: TextStyle(fontSize: 30,color: Colors.blue))]),
          Row(
              children: [
                Text('性别',style: TextStyle(fontSize: 30,color: Colors.black),),
                Text('${arguments.gender}',style: TextStyle(fontSize: 30,color: Colors.blue))]),
          Row(
              children: [
                Text('企业代码',style: TextStyle(fontSize: 30,color: Colors.black),),
                Text('${arguments.beanid}',style: TextStyle(fontSize: 30,color: Colors.blue))]),
        ],
      ),
    );
  }
}
