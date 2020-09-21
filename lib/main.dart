import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:tena/routes/scratcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AssetsAudioPlayer player = AssetsAudioPlayer();

  @override
  void initState() {
    player.open(
      Playlist(audios: [
        Audio('assets/music1.mp3'),
        Audio('assets/music2.mp3'),
      ]),
      loopMode: LoopMode.playlist,
      autoStart: true,
      playInBackground: PlayInBackground.disabledRestoreOnForeground,
      phoneCallStrategy: PhoneCallStrategy.pauseOnPhoneCallResumeAfter,
      respectSilentMode: true,
      volume: 1,
    );
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amer ♥️',
      home: ScratcherScreen(
        assetsAudioPlayer: player,
      ),
    );
  }
}
