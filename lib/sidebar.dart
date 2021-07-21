import 'package:flutter/material.dart';
import 'package:gym_port/homepage.dart';

class SideBar extends StatelessWidget {

  final bool isSidebarOpen = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final _animationDuration = const Duration(milliseconds: 500);

    return AnimatedPositioned(
      duration: _animationDuration,
      top: 0,
      bottom: 0,
      left: isSidebarOpen ? 0 : 0,
      right: isSidebarOpen ? 0 : screenWidth - 45,
      child: Row(
        children: [
          Expanded(
              child: Container(
                color: Color(0xFF7D4343),
              ),
          ),
          Align(
            alignment: Alignment(0, -0.9),
            child: Container(
              width: 35,
                height: 110,
                color: Color(0xFF7D4343),
            ),
          )

        ],
      ),
    );
  }
}

