import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomDrawer extends StatefulWidget {
  @override
  CustomDrawerState createState() => new CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  bool _canBeDragged = true;
  double minDragStartEdge = 0.00;
  double maxDragStartEdge = 411.1;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _canBeDragged = true;
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController.isDismissed &&
        details.globalPosition.dx <= minDragStartEdge;
    bool isDragOpenFromRight = animationController.isDismissed &&
        details.globalPosition.dx >= maxDragStartEdge;
    _canBeDragged = !isDragOpenFromLeft || isDragOpenFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta / maxSlide;
      animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= 365.0) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;
      animationController.fling(velocity: visualVelocity);
    } else if (animationController.value < 0.5) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();
  final double maxSlide = 225;

  @override
  Widget build(BuildContext context) {
    var myDrawer = Container(
      color: Colors.grey,
    );
    var myhome = Container(
      // height: double.maxFinite,
      // width: double.maxFinite,
      color: Colors.yellow,
      // child: Stack(
      //   children: <Widget>[
      //     Image.asset('images/ratherbe.png',scale: 200,),
      //     Positioned(
      //         bottom: 16,
      //         left: 16,
      //         child: Text('シュガーソン',style: TextStyle(color: Colors.grey),maxLines: 3,)),
      //   ],
      // ),
    );
    var myhome2 = Container(
      height: double.maxFinite,
      width: MediaQuery.of(context).size.width / 2 + 30,
      color: Colors.blue,
      child: Stack(
        children: <Widget>[
          Image.asset(
            'images/ratherbe.png',
            scale: MediaQuery.of(context).size.width / 2,
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.settings_applications_rounded,
                color: Colors.white,
                size: 100,
              ),
              Icon(
                Icons.launch_sharp,
                color: Colors.white,
                size: 100,
              ),
              Icon(
                Icons.label,
                color: Colors.white,
                size: 100,
              )
            ],
          ),
          Positioned(
              bottom: 20,
              left: 16,
              child: Text(
                'シュガーソン',
                style: TextStyle(color: Colors.grey),
                maxLines: 3,
              )),
        ],
      ),
    );
    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      onTap: toggle,
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            return Stack(
              children: <Widget>[
                myDrawer,
                Transform.translate(
                  offset: Offset(maxSlide * (animationController.value - 1), 0),
                  child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0)
                        ..rotateY(
                            math.pi / 2 * (1 - animationController.value)),
                      alignment: Alignment.centerRight,
                      child: myhome2),
                ),
                Transform.translate(
                  offset: Offset(maxSlide * animationController.value, 0),
                  child: Transform(
                      transform: Matrix4.identity()
                         ..setEntry(3, 2, 0.001)
                         ..rotateY(-math.pi / 2 * animationController.value),
                      alignment: Alignment.centerLeft,
                      child: myhome),
                ),
              ],
            );
          }),
    );
  }
}
