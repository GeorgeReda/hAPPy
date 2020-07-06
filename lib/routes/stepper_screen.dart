import 'package:birthday_1/routes/folding_cell_screen.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

class StepperScreen extends StatefulWidget {
  StepperScreen({Key key}) : super(key: key);

  @override
  _StepperScreenState createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  static int _currentStep = 0;

  final List<Step> _steps = [
    Step(
      title: Text(
        'Id laborum in incididunt qui aliqua.',
        style: TextStyle(color: Colors.white),
      ),
      content: imageTile('images/pic1.jpeg'),
    ),
    Step(
      title: Text(
        'Id laborum in incididunt qui aliqua.',
        style: TextStyle(color: Colors.white),
      ),
      content: imageTile('images/pic1.jpeg'),
    ),
    Step(
      title: Text(
        'Id laborum in incididunt qui aliqua.',
        style: TextStyle(color: Colors.white),
      ),
      content: imageTile('images/pic1.jpeg'),
    ),
    Step(
      title: Text(
        'Id laborum in incididunt qui aliqua.',
        style: TextStyle(color: Colors.white),
      ),
      content: imageTile('images/pic1.jpeg'),
    ),
    Step(
      title: Text(
        'Id laborum in incididunt qui aliqua.',
        style: TextStyle(color: Colors.white),
      ),
      content: imageTile('images/pic1.jpeg'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   floatingActionButton: FloatingActionButton(onPressed: () {
      //     setState(() {
      //       _play = true;
      //       print(_play);
      //     });
      //   }),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pic2.jpeg'),
                fit: BoxFit.fill,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
        child: Center(
          child: Stepper(
            onStepTapped: (int index) {
              setState(() {
                _currentStep = index;
              });
            },
            currentStep: _currentStep,
            onStepCancel: () {
              if (_currentStep <= 0) return;
              setState(() {
                _currentStep -= 1;
              });
            },
            onStepContinue: () {
              if (_currentStep == _steps.length - 1)
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FoldingCellScreen(),
                ));
              else
              setState(() {
                _currentStep += 1;
              });
            },
            type: StepperType.vertical,
            controlsBuilder: (context, {onStepCancel, onStepContinue}) => Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: onStepCancel,
                  child: const Text('Back'),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  onPressed: onStepContinue,
                  child: const Text('Next'),
                ),
              ],
            ),
            physics: ClampingScrollPhysics(),
            steps: _steps,
          ),
        ),
      ),
    );
  }
}

imageTile(String img) {
  return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black38, blurRadius: 10, spreadRadius: 10)
        ],
        shape: BoxShape.rectangle,
      ),
      child: Image.asset(
        img,
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    ),
  );
}
