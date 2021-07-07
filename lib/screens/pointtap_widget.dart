import 'package:flutter/material.dart';
import 'package:yourstory/custom_painter/draw_line.dart';

import '../main.dart';

class PointTapWidget extends StatefulWidget {
  const PointTapWidget({Key? key}) : super(key: key);

  @override
  _PointTapWidgetState createState() => _PointTapWidgetState();
}

class _PointTapWidgetState extends State<PointTapWidget> {
  var _globalKey = GlobalKey();
  Size size = Size(0, 0);
  Offset tapOffset = Offset(0, 0);

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      setState(() {
        print(size);
        size = _globalKey.currentContext?.size ?? Size(0, 0);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: GestureDetector(
                  onTapUp: (TapUpDetails tap) {
                    tapOffset =
                        Offset(tap.localPosition.dx, tap.localPosition.dy);
                    setState(() {});
                  },
                  child: CustomPaint(
                    painter:
                        DrawLine(containerSize: size, tapOffset: tapOffset),
                    child: Container(
                      key: _globalKey,
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("(0,0) to (x,y)",
                      style: Theme.of(context).textTheme.subtitle1),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(x,y) to (100,100)",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "Co-ordinates:(${tapOffset.dx.round()},${tapOffset.dy.round()})",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontSize: 20),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
