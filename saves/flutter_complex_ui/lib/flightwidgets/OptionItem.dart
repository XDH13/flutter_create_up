import 'package:flutter/cupertino.dart';

class OptionItem extends StatefulWidget{

  const OptionItem({Key key, this.name, this.onTap,}) : super(key: key);

  @override
  _OptionItemState createState() =>   _OptionItemState();
  final String name;
  final void Function() onTap;
}

class _OptionItemState extends State<OptionItem>{
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: widget.onTap,
     child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 16),///todo
       child: Row(
         children: <Widget>[
           SizedBox(width: 26,),
           SizedBox(width: 26,),
           Expanded(child: Text(widget.name))
         ],
       ),
     ),
   );
  }
  
}