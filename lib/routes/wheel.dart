import 'dart:ui';

import 'package:flutter/material.dart';

class Wheel extends StatelessWidget {
  const Wheel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/44-min.jpeg'), fit: BoxFit.fill)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black54,
              ),
            ),
          ),
          Center(
            child: Container(
              child: SafeArea(
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 300.0,
                  overAndUnderCenterOpacity: 0.3,
                  diameterRatio: 3.0,
                  magnification: 1.3,
                  renderChildrenOutsideViewport: true,
                  clipToSize: false,
                  useMagnifier: true,
                  physics: FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 71,
                      builder: (context, index) => Center(
                            child: Image.asset(
                              'assets/${index + 1}-min.jpeg',
                            ),
                          )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
