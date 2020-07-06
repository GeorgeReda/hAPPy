import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell/widget.dart';

class ReusableFoldingCell extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();
  final String frontImage, innerTopImage, innerBottomImage;
  ReusableFoldingCell(
      {Key key,
      @required this.frontImage,
      @required this.innerTopImage,
      @required this.innerBottomImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SimpleFoldingCell(
        key: _foldingCellKey,
        frontWidget: _buildFrontWidget(),
        innerTopWidget: _buildInnerTopWidget(),
        innerBottomWidget: _buildInnerBottomWidget(),
        cellSize: Size(MediaQuery.of(context).size.width, 300),
        padding: EdgeInsets.all(15),
        animationDuration: Duration(milliseconds: 300),
        borderRadius: 10,
      ),
    );
  }

  Widget _buildFrontWidget() {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(frontImage),
                fit: BoxFit.fill,
                alignment: Alignment.center,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("CARD",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800)),
            FlatButton(
              onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              child: Text(
                "Open",
              ),
              textColor: Colors.white,
              color: Colors.indigoAccent,
              splashColor: Colors.white.withOpacity(0.5),
            )
          ],
        ));
  }

  Widget _buildInnerTopWidget() {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(innerTopImage),
                fit: BoxFit.fill,
                alignment: Alignment.center,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
        alignment: Alignment.center,
        child: Text("TITLE",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontSize: 20.0,
                fontWeight: FontWeight.w800)));
  }

  Widget _buildInnerBottomWidget() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(innerBottomImage),
              fit: BoxFit.fill,
              alignment: Alignment.center,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken))),
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: FlatButton(
          onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
          child: Text(
            "Close",
          ),
          textColor: Colors.white,
          color: Colors.indigoAccent,
          splashColor: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}
