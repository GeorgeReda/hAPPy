import 'dart:ui';

import 'package:flutter/material.dart';

class ReusableTile extends StatelessWidget {
  final String image;
  final String title;
  const ReusableTile({Key key, @required this.image, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
      ),
      alignment: Alignment.bottomCenter,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            image,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            color: Colors.black26,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ],
      ),
    );
  }
}
