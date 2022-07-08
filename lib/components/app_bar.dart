import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myportfolio/components/top_menu_bar.dart';

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
            title: 'Projects',
            press: () {},
          ),
          const SizedBox(
            width: 80,
          ),
          MenuBarItems(
            title: 'About',
            press: () {},
          ),
          const SizedBox(
            width: 80,
          ),
          MenuBarItems(
            title: 'FAqs',
            press: () {},
          ),
          const SizedBox(
            width: 80,
          ),
          MenuBarItems(
            title: 'Portfolio',
            press: () {},
          ),
        ],
      ),
    );
  }
}
