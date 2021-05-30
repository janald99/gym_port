import 'package:gym_port/exercises_widget.dart';
import 'package:flutter/material.dart';

import 'exercises_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        buildAppBar(context),
        ExercisesWidget(),
      ],
    )
  );

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
    centerTitle: true,
    pinned: true,
    title: Text('Gym \'Port'),
    leading: Icon(Icons.menu),
    actions: [
      Icon(Icons.person, size: 28),
      SizedBox(width: 12),

    ],
  );
}
