import 'package:birthday_1/routes/before_after.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratcherScreen extends StatefulWidget {
  const ScratcherScreen({Key key}) : super(key: key);

  @override
  _ScratcherScreenState createState() => _ScratcherScreenState();
}

class _ScratcherScreenState extends State<ScratcherScreen> {
  final List<Color> confettiColors = [
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.purple
  ];
  ConfettiController _controller;
  @override
  void initState() {
    _controller = ConfettiController(duration: Duration(seconds: 5));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Scratcher(
                brushSize: 70,
                accuracy: ScratchAccuracy.low,
                threshold: 70,
                onThreshold: () {
                  _controller.play();
                },
                color: Colors.blueGrey,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/pic1.jpeg'),
                      fit: BoxFit.fill,
                    )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          color: Colors.black12,
                          child: Text(
                            'hAPPy Birthday',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Container()));
                          },
                        ),
                        SizedBox(height: 30)
                      ],
                    ))),
          ),
          buildConfetti(Alignment.center),
          buildConfetti(Alignment.centerLeft),
          buildConfetti(Alignment.centerRight),
          buildConfetti(Alignment.bottomCenter),
          buildConfetti(Alignment.topCenter),
          buildConfetti(Alignment.topRight),
          buildConfetti(Alignment.topLeft),
          buildConfetti(Alignment.bottomRight),
          buildConfetti(Alignment.bottomLeft)
        ],
      ),
    );
  }

  Widget buildConfetti(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: ConfettiWidget(
        confettiController: _controller,
        blastDirectionality: BlastDirectionality.explosive,
        shouldLoop: true,
        colors: confettiColors,
      ),
    );
  }
}
