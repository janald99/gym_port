import 'package:flutter/cupertino.dart';
//import video player package here

class Exercise {
  final String name;
  final Duration duration;
  final int noOfReps;
  final String videoUrl;
  //VideoPlayerController controller;

  Exercise({
    required this.name,
    required this.duration,
    required this.noOfReps,
    required this.videoUrl,
});

}