import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';

typedef VoidCallback = void Function();

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

class OnHoverButton extends StatefulWidget {
  final Function(bool isHovered) builder;

  const OnHoverButton({Key? key, required this.builder}) : super(key: key);

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..scale(1.1);
    final tranform = isHovered ? hoverTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: tranform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
