import 'package:flutter/material.dart';
import 'exercise.dart';
import 'package:video_player/video_player.dart';

//remember to update pub-spec.yaml 444

class VideoPlayerWidget extends StatefulWidget {
  final Exercise exercise;
  final VoidCallback onInitialized;

  const VideoPlayerWidget({
    required this.exercise,
    required this.onInitialized,
});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.exercise.videoUrl)  // put videoUrl in assets folder
      ..initialize().then((value) {
        controller.setLooping(true);    //if video is finished, loop.
        controller.play();

        widget.exercise.controller = controller;
        widget.onInitialized();   //update UI
      });
  }

  @override
  Widget build(BuildContext context) => SizedBox.expand(// expand video to the whole page
    child: controller.value.isInitialized
        ? VideoPlayer(controller)
        : Center(child: CircularProgressIndicator()), //do this while loading and not initialized
  );
}