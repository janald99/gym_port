import 'package:flutter/material.dart';
import 'package:gym_port/exercise_set.dart';
import 'exercise.dart';
import 'video_controls_widget.dart';
import 'video_player_widget.dart';

class ExercisePage extends StatefulWidget {
  final ExerciseSet exerciseSet;

  const ExercisePage({
    required this.exerciseSet,
  });

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  final controller = PageController(); //sliding the timer
  late Exercise currentExercise;

  @override
  void initState() {
    super.initState();

    currentExercise = widget.exerciseSet.exercises.first;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(currentExercise.name),
          centerTitle: true,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            buildVideos(),
            Positioned(
              bottom: 20,
              right: 50,
              left: 50,
              child: buildVideoControls(),
            )
          ],
        ),
      );

  Widget buildVideos() => PageView(
        //can scroll to left/right side
        controller: controller,
        onPageChanged: (index) => setState(() {
          //update currentExercise so new video is displayed
          currentExercise = widget.exerciseSet.exercises[index];
        }),
        children: widget.exerciseSet.exercises
            .map((exercise) => VideoPlayerWidget(
                  exercise: currentExercise,
                  onInitialized: () => setState(() {}),
                ))
            .toList(),
      );

  Widget buildVideoControls() => VideoControlsWidget(
    exercise: currentExercise,
    onTogglePlaying: (isPlaying) {
      setState(() {
        if (isPlaying) {
          currentExercise.controller.play();
        } else {
          currentExercise.controller.pause();
        }
      });
    },
    onNextVideo: () => controller.nextPage(
      duration: Duration(milliseconds: 300),  //how long it takes till next page
      curve: Curves.easeIn,
    ),
    onRewindVideo: () => controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    ),
  );
}
