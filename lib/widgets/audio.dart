import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class ModAudioWidget extends StatefulWidget {
  ModAudioWidget({Key key, this.path, this.assetsAudioPlayer})
      : super(key: key);
  final String path;
  final AssetsAudioPlayer assetsAudioPlayer;
  @override
  _ModAudioWidgetState createState() => _ModAudioWidgetState();
}

class _ModAudioWidgetState extends State<ModAudioWidget> {
  bool _play = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AudioWidget.assets(
        play: _play,
        path: widget.path,
        onFinished: () => widget.assetsAudioPlayer.play(),
        child: Container(
          height: 50,
          width: 50,
          child: RaisedButton(
              shape: CircleBorder(),
              color: Color(0xffFFD700),
              child:
                  Center(child: Icon(_play ? Icons.pause : Icons.play_arrow)),
              onPressed: () {
                widget.assetsAudioPlayer.playOrPause();
                setState(() => _play = !_play);
              }),
        ),
      ),
    );
  }
}
