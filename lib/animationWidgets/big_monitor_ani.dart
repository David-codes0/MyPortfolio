import 'package:flutter/material.dart';

class BigMonitor extends StatelessWidget {
  const BigMonitor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 450,
      bottom: 100,
      child: Icon(
        Icons.desktop_windows,
        color: Colors.white.withOpacity(0.1),
        size: 400,
      ),
    );
  }
}
