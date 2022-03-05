import 'package:flutter/material.dart';

import 'package:mockup_design/src/core/helpers/extensions.dart';

class Backgraound extends StatelessWidget {
  const Backgraound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight,
      width: context.getWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.9],
          colors: [
            Color.fromARGB(255, 150, 99, 44),
            Color.fromARGB(255, 232, 185, 136),
            Color.fromARGB(255, 104, 77, 49),
          ],
        ),
      ),
    );
  }
}
