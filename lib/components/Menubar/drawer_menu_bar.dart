import 'package:flutter/material.dart';
import 'package:myportfolio/components/Menubar/top_menu_bar.dart';
import 'package:myportfolio/my_port_social_icons.dart';

class DrawerMenuBar extends StatelessWidget {
  const DrawerMenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MenuBarItems(
          title: 'Home',
          press: () {},
        ),
        const SizedBox(
          height: 30,
        ),
        MenuBarItems(
          title: 'Skills',
          press: () {},
        ),
        const SizedBox(
          height: 30,
        ),
        MenuBarItems(
          title: 'Projects',
          press: () {},
        ),
        const SizedBox(
          height: 30,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(MyPortSocial.linkedin)),
        IconButton(
            onPressed: () {},
            icon: const Icon(MyPortSocial.twitter)),
        IconButton(
            onPressed: () {},
            icon: const Icon(MyPortSocial.whatsapp)),
        MenuBarHireMe(
          title: 'Hire me',
          press: () {},
        ),
      ],
    );
  }
}
