import 'package:flutter/material.dart';
import 'package:gym_port/exercise_set.dart';
import 'package:gym_port/data/exercise.dart';

final exerciseSets = [
  ExerciseSet(name: 'Stronglifts 5x5',
    exercises: exercises1,
    imageUrl: 'assets/StrongLifts-5x5-Workout-Program.png',
    exerciseType: ExerciseType.beginner,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  ExerciseSet(name: 'Texas method',
    exercises: exercises2,
    imageUrl: 'assets/TexasMethod-thin.jpg',
    exerciseType: ExerciseType.intermediate,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(name: 'Smolovs',
    exercises: exercises3,
    imageUrl: 'assets/smolov.png',
    exerciseType: ExerciseType.advanced,
    color: Colors.red.shade100.withOpacity(0.6),
  ),
];