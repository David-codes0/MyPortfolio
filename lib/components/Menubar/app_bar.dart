import 'package:flutter/material.dart';
import 'package:myportfolio/components/Menubar/top_menu_bar.dart';
import 'package:myportfolio/my_port_social_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32),
      child: Row(
        children: [
          MenuBarItems(
            title: 'Home',
            press: () {},
          ),
          const SizedBox(
            width: 30,
          ),
          MenuBarItems(
            title: 'Skills',
            press: () {},
          ),
          const SizedBox(
            width: 30,
          ),
          MenuBarItems(
            title: 'Projects',
            press: () {},
          ),
          const SizedBox(
            width: 30,
          ),
          IconButton(onPressed: () {}, icon: const Icon(MyPortSocial.linkedin)),
          IconButton(onPressed: () {}, icon: const Icon(MyPortSocial.twitter)),
          IconButton(onPressed: () {}, icon: const Icon(MyPortSocial.whatsapp)),
          MenuBarHireMe(
            title: 'Hire me',
            press: () {},
          ),
        ],
      ),
    );
  }
}
