import 'package:flutter/material.dart';

import 'package:mockup_design/src/core/helpers/extensions.dart';
import 'package:mockup_design/src/features/omboarding/domain/models/models.dart';

class SectionInfoView extends StatelessWidget {
  const SectionInfoView({Key? key, required this.sectionInfo}) : super(key: key);

  final SectionInfo sectionInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.getPadding25),
      child: Column(
        children: [
          _Image(image: sectionInfo.image),
          const Spacer(),
          _Phrase(phrase: sectionInfo.phrase),
          const Spacer(),
          _Details(details: sectionInfo.details),
          const Spacer(),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight * 0.48,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              height: context.getHeight * 0.35,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class _Phrase extends StatelessWidget {
  const _Phrase({Key? key, required this.phrase}) : super(key: key);

  final String phrase;
  @override
  Widget build(BuildContext context) {
    return Text(
      phrase,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline1?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: const Color.fromARGB(255, 30, 28, 28),
          ),
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({Key? key, required this.details}) : super(key: key);

  final String details;
  @override
  Widget build(BuildContext context) {
    return Text(
      details,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.caption?.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
