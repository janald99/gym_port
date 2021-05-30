import 'package:flutter/material.dart';

import 'exercise.dart';


enum ExerciseType {beginner, intermediate, advanced}

String getExerciseName(ExerciseType type) {
  switch (type) {
    case ExerciseType.advanced:
      return 'Advanced';
    case ExerciseType.intermediate:
      return 'Intermediate';
    case ExerciseType.beginner:
      return 'Beginner';
    default:
      return 'All';
  }
}

class ExerciseSet {
  final String name;
  final List<Exercise> exercises;
  final String imageUrl;
  final ExerciseType exerciseType;
  final Color color;

  const ExerciseSet({
    required this.name,
    required this.exercises,
    required this.imageUrl,
    required this.exerciseType,
    required this.color,
});

  String get totalDuration {
    final Duration duration = exercises.fold(
      Duration.zero,
        (previous, element) => previous + element.duration,
    );

    return duration.inMinutes.toString();
  }

}