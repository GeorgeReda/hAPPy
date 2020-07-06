import 'dart:ui';

import 'package:birthday_1/routes/list_view_1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NestedList extends StatelessWidget {
  const NestedList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pic2.jpeg'),
                fit: BoxFit.fill,
                colorFilter:
                    ColorFilter.mode(Colors.black38, BlendMode.darken))),
        child: Stack(
          children: <Widget>[
            BackdropFilter(filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20)),
            ListView(
              padding: const EdgeInsets.all(8.0),
              children: <Widget>[
                buildTitle(
                    '😂🖤كيرو ياكيرو ياكيرو🥳💖انا ازاى بدلعك يا ولااا دا انا مبدلعش حد خالص😂💖💖 تعبت يخربيت شكلك 😂انا بقول كفايه واروح انام انا كمان 😂💖'),
                CarouselSlider(
                  items: <Widget>[
                    buildPic('images/2-min.jpeg'),
                    buildPic('images/6-min.jpeg'),
                    buildPic('images/10-min.jpeg'),
                    buildPic('images/11-min.jpeg'),
                  ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                  ),
                ),
                buildTitle(
                    '😂💖بجد بجد كان نفسي تتبسط ف عيد ميلادك بس مش عارفه ابسطك اسفه😥اه صح..انا اه دخلت حياتك متأخر بس انت بيستى انا بس  وميهمنيش مين كان عارفك الاول وكدا تمم واللى عايز يعاركنى يعاركنى 🌚🖤'),
                CarouselSlider(
                  items: <Widget>[
                    buildPic('images/12-min.jpeg'),
                    buildPic('images/15-min.jpeg'),
                    buildPic('images/16-min.jpeg'),
                    buildPic('images/24-min.jpeg'),
                  ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                  ),
                ),
                Center(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ListViewV1()));
                  },
                  child: Text('continue'),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style:
                TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 16),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}

Widget buildPic(String pic) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(pic),
            alignment: Alignment.center,
            fit: BoxFit.fill)),
  );
}
