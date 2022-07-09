import 'package:flutter/material.dart';
import 'package:myportfolio/components/Menubar/ohoverbuttonmenu.dart';
import 'package:myportfolio/constants.dart';

typedef VoidCallback = void Function();

class MenuBarHireMe extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const MenuBarHireMe({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      builder: (bool isHovered) {
        final colorChanger1 = isHovered ? primaryColor : Colors.black;
        final colorChanger2 = isHovered ? Colors.black : Colors.white;
        final colorChanger3 = isHovered ? primaryColor : Colors.white;
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.square(65),
            // textStyle: const TextStyle(
            //   color: Colors.white,
            // ),
            primary: colorChanger3,
            backgroundColor: colorChanger1,
            side: BorderSide(
              width: 3,
              color: colorChanger3,
            ),
          ),
          onPressed: press,
          child: Text(
            title,
            style: TextStyle(
              color: colorChanger2,
              fontSize: 25,
            ),
          ),
        );
      },
    );
  }
}

class MenuBarItems extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const MenuBarItems({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      builder: (bool isHovered) {
        final colorChanger1 = isHovered ? primaryColor : Colors.black;
        final colorChanger2 = isHovered ? Colors.black : Colors.white;
        final colorChanger3 = isHovered ? primaryColor : Colors.white;
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.square(65),
            // textStyle: const TextStyle(
            //   color: Colors.white,
            // ),
            primary: colorChanger3,
            backgroundColor: colorChanger1,
          ),
          onPressed: press,
          child: Text(
            title,
            style: TextStyle(
              color: colorChanger2,
              fontSize: 15,
            ),
          ),
        );
      },
    );
  }
}
