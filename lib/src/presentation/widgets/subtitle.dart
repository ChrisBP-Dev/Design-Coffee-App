import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  const Subtitle(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
        const SizedBox(height: 5),
      ],
    );
  }
}
