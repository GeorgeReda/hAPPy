import 'package:birthday_1/reusables/folding_cell.dart';
import 'package:birthday_1/routes/wheel.dart';
import 'package:flutter/material.dart';

class FoldingCellScreen extends StatelessWidget {
  const FoldingCellScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ReusableFoldingCell(
              frontImage: 'images/pic1.jpeg',
              innerBottomImage: 'images/pic2.jpeg',
              innerTopImage: 'images/pic3.jpeg',
            ),
            ReusableFoldingCell(
              frontImage: 'images/pic1.jpeg',
              innerBottomImage: 'images/pic2.jpeg',
              innerTopImage: 'images/pic3.jpeg',
            ),
            ReusableFoldingCell(
              frontImage: 'images/pic1.jpeg',
              innerBottomImage: 'images/pic2.jpeg',
              innerTopImage: 'images/pic3.jpeg',
            ),
            ReusableFoldingCell(
              frontImage: 'images/pic1.jpeg',
              innerBottomImage: 'images/pic2.jpeg',
              innerTopImage: 'images/pic3.jpeg',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.black12,
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Wheel()));
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
