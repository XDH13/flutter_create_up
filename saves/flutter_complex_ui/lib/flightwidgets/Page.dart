import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complex_ui/flightwidgets/OptionItem.dart';

class Pages extends StatefulWidget {
  final int number;
  final String question;
  final List<String> answers;
  final VoidCallback onOptionSelected;

  const Pages(
      {Key key,
      this.number,
      this.question,
      this.answers,
      this.onOptionSelected})
      : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List<GlobalKey<_ItemFaderState>> keys;
  @override
  void initState() {
    super.initState();
    keys = List.generate(5, (_) => GlobalKey<_ItemFaderState>());
    onInit();
  }
  void onInit() async{
    for(GlobalKey<_ItemFaderState> key in keys){
      await Future.delayed(Duration(milliseconds: 40));
      key.currentState.show();
    }
  }
  void onTap() async{
    for(GlobalKey<_ItemFaderState> key in keys){
      await Future.delayed(Duration(milliseconds: 400));
      key.currentState.hide();
    }
    widget.onOptionSelected();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 32,),
        ItemFader(key: keys[0],child: StepNumber(number: widget.number),),
        ItemFader(key: keys[1],),
        StepNumber(number:widget.number),
        StepQuestion(number:widget.number,question:widget.question),
        Spacer(),
        ...widget.answers.map((String answer){
          int answerIndex = widget.answers.indexOf(answer);
          int keyIndex = answerIndex + 2;
          return ItemFader(
            key: keys[keyIndex],
            child: OptionItem(
              name: answer,
              onTap:onTap,
            ),
          );
        }),
        SizedBox(height: 64,),
      ],
    );
  }
}

Widget StepQuestion({int number,String question}) {
  return
      Text(
        question,style: (
      TextStyle(fontSize: 15,color: Colors.white)
      ),
      );
}

Widget StepNumber ({int number}){
  return Text(number.toString(),style: TextStyle(fontSize: 40,color: Colors.grey),);
}

class ItemFader extends StatefulWidget {
  final Widget child;

  const ItemFader({Key key, this.child}) : super(key: key);

  @override
  _ItemFaderState createState() => _ItemFaderState();
}
class _ItemFaderState extends State<ItemFader>
    with SingleTickerProviderStateMixin {
  int position = 1;

  ///1在内容中，-1 可消失
  AnimationController _animationController;
  Animation _animation;
  void show() {
    setState(() => position =1);
  }
  void hide() {
    setState(() {
      position = -1;
    });
    _animationController.reverse();
  }
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: _animation, builder: (context, child) {
      return Transform.translate(
        offset: Offset(0, 64 * position * (1 - _animation.value)),
        child:Opacity(
          opacity: _animation.value,
          child: child,
        ),);
    });
  }
}

