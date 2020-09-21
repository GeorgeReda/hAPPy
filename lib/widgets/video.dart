import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:video_player/video_player.dart';

class ModVideoWidget extends StatefulWidget {
  ModVideoWidget(
      {Key key, @required this.video, this.ratio, this.assetsAudioPlayer})
      : super(key: key);
  final String video;
  final double ratio;
  final AssetsAudioPlayer assetsAudioPlayer;
  @override
  _ModVideoWidgetState createState() => _ModVideoWidgetState();
}

class _ModVideoWidgetState extends State<ModVideoWidget> {
  VideoPlayerController _controller;
  ChewieController _chewieController;
  @override
  void initState() {
    widget.assetsAudioPlayer.pause();
    _controller = VideoPlayerController.asset(widget.video);
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoInitialize: true,
      allowFullScreen: false,
      aspectRatio: 9 / 16,
      errorBuilder: (context, errorMessage) => Text(errorMessage),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.pause();
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.synchronized(
      duration: Duration(seconds: 3),
      child: ScaleAnimation(
        child: FadeInAnimation(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
