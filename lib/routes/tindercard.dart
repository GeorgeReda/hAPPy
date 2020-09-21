import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:tena/routes/sliding.dart';

class TinderCard extends StatelessWidget {
  const TinderCard({Key key}) : super(key: key);

  String imgPath(int number) => 'assets/$number-min.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imgPath(23)),
                fit: BoxFit.fill,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
        child: ListView(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: TinderSwapCard(
                  orientation: AmassOrientation.BOTTOM,
                  animDuration: 1,
                  totalNum: 15,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Card(
                      child: Image.asset(
                        imgPath(index + 1),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  cardController: CardController(),
                )),
            Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: TinderSwapCard(
                  orientation: AmassOrientation.BOTTOM,
                  animDuration: 1,
                  totalNum: 15,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Card(
                      child: Image.asset(
                        imgPath(index + 15),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  cardController: CardController(),
                )),
            Container(
              height: 50,
              width: 50,
              child: RaisedButton(
                  color: Color(0xffFFD700),
                  child: Text('Next'),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SlidingScreen(),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
