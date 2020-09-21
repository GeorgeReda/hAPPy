import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';
import 'package:tena/routes/tindercard.dart';

class BeforeAfterScreen extends StatelessWidget {
  const BeforeAfterScreen({Key key}) : super(key: key);
  String imgPath(int number) => 'assets/$number-min.jpeg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(imgPath(8)),
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            fit: BoxFit.fill,
          )),
          child: SafeArea(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _buildBeforeAfter(1, 3),
                _buildBeforeAfter(7, 8),
                _buildBeforeAfter(11, 10),
                _buildBeforeAfter(13, 15),
                _buildBeforeAfter(18, 20),
                _buildBeforeAfter(32, 31),
                _buildBeforeAfter(39, 40),
                _buildBeforeAfter(43, 44),
                _buildBeforeAfter(49, 50),
                Container(
                  height: 50,
                  width: 50,
                  child: RaisedButton(
                      color: Color(0xffFFD700),
                      child: Text('Next'),
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TinderCard(),
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildBeforeAfter(int img1, int img2) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BeforeAfter(
            beforeImage: Image.asset(
              imgPath(img1),
              fit: BoxFit.fill,
            ),
            afterImage: Image.asset(
              imgPath(img2),
              fit: BoxFit.fill,
            ),
            thumbColor: Color(0xffFFD700),
          ),
        ),
      );
}
