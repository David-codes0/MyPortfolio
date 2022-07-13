import 'package:flutter/material.dart';
import 'package:myportfolio/models/projects.dart';

class PojectsGrid extends StatelessWidget {
  const PojectsGrid({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 1.0],
          colors: [
            Colors.blueAccent.shade400,
            Colors.purpleAccent.shade400,
          ],
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              project.title!,
              style: const TextStyle(
                fontFamily: 'Source sans',
                fontSize: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              project.descrption!,
              style: const TextStyle(
                fontFamily: 'Source sans',
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
