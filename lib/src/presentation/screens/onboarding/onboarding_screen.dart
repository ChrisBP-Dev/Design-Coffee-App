import 'package:flutter/material.dart';

import 'package:mockup_design/src/presentation/screens/onboarding/widgets/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Backgraound(),
        StickersBackgraound(0.8, -0.85),
        StickersBackgraound(0.9, 0.2),
        StickersBackgraound(-0.8, 0.5),
        CustomPageView(),
      ],
    );
  }
}
