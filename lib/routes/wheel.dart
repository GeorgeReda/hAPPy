import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Wheel extends StatefulWidget {
  const Wheel({Key key}) : super(key: key);

  @override
  _WheelState createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  int picNum;
  changeBackgroundPic() {
    Timer(Duration(seconds: 5), () {
      setState(() {
        picNum = Random().nextInt(3) + 1;
      });
      changeBackgroundPic();
    });
  }

  @override
  void initState() {
    picNum = Random().nextInt(3) + 1;
    changeBackgroundPic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(seconds: 3),
            curve: Curves.easeIn,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pic$picNum.jpeg'),
                    fit: BoxFit.fill)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black54,
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: ListWheelScrollView.useDelegate(
                itemExtent: 200,
                overAndUnderCenterOpacity: 0.3,
                diameterRatio: 3,
                magnification: 1.3,
                renderChildrenOutsideViewport: true,
                clipToSize: false,
                useMagnifier: true,
                physics: FixedExtentScrollPhysics(),
                // Todo : Change the count and the path
                childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 24,
                    builder: (context, index) => ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Center(
                            child: Image.asset(
                              '',
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ),
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
