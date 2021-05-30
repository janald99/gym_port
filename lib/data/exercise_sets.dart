import 'package:flutter/material.dart';
import 'package:gym_port/exercise_set.dart';
import 'package:gym_port/data/exercise.dart';

final exerciseSets = [
  ExerciseSet(name: 'Core',
    exercises: exercises1,
    imageUrl: 'waefawef',
    exerciseType: ExerciseType.beginner,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  ExerciseSet(name: 'Arms',
    exercises: exercises2,
    imageUrl: 'aef',
    exerciseType: ExerciseType.beginner,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(name: 'Upper Body',
    exercises: exercises3,
    imageUrl: 'awfwef',
    exerciseType: ExerciseType.beginner,
    color: Colors.red.shade100.withOpacity(0.6),
  ),
];