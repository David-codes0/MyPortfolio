import 'package:flutter/material.dart';
import 'package:myportfolio/components/Menubar/top_menu_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          const Spacer(),
          MenuBarItems(
            title: 'Home',
            press: () {},
          ),
          const SizedBox(
            width: 80,
          ),
          MenuBarItems(
            title: 'Skills',
            press: () {},
          ),
          const SizedBox(
            width: 80,
          ),
          MenuBarItems(
            title: 'Projects',
            press: () {},
          ),
          const SizedBox(
            width: 80,
          ),
          MenuBarHireMe(
            title: 'Hire me',
            press: () {},
          ),
        ],
      ),
    );
  }
}
