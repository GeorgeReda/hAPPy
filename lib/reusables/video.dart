import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReusableVideo extends StatefulWidget {
  ReusableVideo({Key key, @required this.video, this.ratio}) : super(key: key);
  final String video;
  final double ratio;
  @override
  _ReusableVideoState createState() => _ReusableVideoState();
}

class _ReusableVideoState extends State<ReusableVideo> {
  VideoPlayerController _controller;
  ChewieController _chewieController;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.video);
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoInitialize: true,
      aspectRatio: 9 / 16,
      errorBuilder: (context, errorMessage) => Text(errorMessage),
      
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
