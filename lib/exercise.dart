//import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

class Exercise {
  final String name;
  final Duration restDuration;
  final int noOfSets;
  final int noOfReps;
  final String videoUrl;
  late VideoPlayerController controller;

  Exercise({
    required this.name,
    required this.restDuration,
    required this.noOfSets,
    required this.noOfReps,
    required this.videoUrl,
});

}