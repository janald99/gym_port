import 'package:gym_port/exercises_widget.dart';
import 'package:flutter/material.dart';
import 'package:gym_port/feedbackpage.dart';
import 'package:gym_port/sidebar.dart';

import 'exercises_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
          buildAppBar(context),
          //AppContainer()
          ExercisesWidget(),
        ],
      ));

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        centerTitle: true,
        pinned: true,
        title: Text('Gym \'Port'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SideBar()));
          },
        ),
        actions: [
          Icon(Icons.person, size: 28),
          SizedBox(width: 12),
        ],
      );


}
