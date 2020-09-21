import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:tena/routes/wheel.dart';

class SlidingScreen extends StatelessWidget {
  SlidingScreen({Key key}) : super(key: key);

  String imgPath(int number) => 'assets/$number-min.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Wheel(),
                  )))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(imgPath(28)),
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          fit: BoxFit.fill,
        )),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) =>
              imageTile(index + 40),
        ),
      ),
    );
  }

  Widget imageTile(int image) {
    return AnimationConfiguration.synchronized(
      child: FadeInAnimation(
        delay: Duration(seconds: 2),
        duration: Duration(seconds: 2),
        child: SlideAnimation(
          delay: Duration(seconds: 2),
          duration: Duration(seconds: 2),
          verticalOffset: 5,
          horizontalOffset: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imgPath(image),
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
