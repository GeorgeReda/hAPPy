import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class TinderCard extends StatelessWidget {
  const TinderCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pic1.jpeg'),
                fit: BoxFit.fill,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
        child: ListView(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: 50,
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
                        '', //Todo change with path
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  cardController: CardController(),
                ))
          ],
        ),
      ),
    );
  }
}
