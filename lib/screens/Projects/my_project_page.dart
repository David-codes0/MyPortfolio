import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/models/projects.dart';
import 'package:myportfolio/screens/Projects/project_grid.dart';

class MyProjectPage extends StatelessWidget {
  const MyProjectPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            color: null,
            width: double.infinity,
            child: Image.asset(
              'images/DATA-SCIENCE-PROJECTS.png',
              scale: 0.05,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.color,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          const Positioned(
            top: 0,
            left: 550,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'My Projects',
                  style: TextStyle(
                      fontFamily: 'Source san',
                      fontSize: 55,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: details.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: defaultPadding,
                    mainAxisSpacing: defaultPadding),
                itemBuilder: (context, index) {
                  return PojectsGrid(
                    project: details[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
