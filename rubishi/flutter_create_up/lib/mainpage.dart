import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets.dart';

class mainview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>MainViewState();

}

class MainViewState extends State<mainview>{
  @override
  Widget build(BuildContext context) {
   return Container(
     width: MediaQuery.of(context).size.width,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Container(
           height: 2,
           width: MediaQuery.of(context).size.width,
           color: Colors.black26,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             ElevatedButton(
                 onPressed: () {
                   Navigator.pushNamed(context, "/searchpage");
                 },
                 child: Text(
                   '搜索',
                   style: TextStyle(
                     fontSize: 20,
                   ),
                 )),
           ],
         ),
         Container(
           height: 2,
           width: MediaQuery.of(context).size.width ,
           color: Colors.black26,
         ),
         LeadingView(context),
         TextBar(context),
         SupportUnits(),
       ],
     ),
   );
  }
}


