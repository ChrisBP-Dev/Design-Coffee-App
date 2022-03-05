import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:mockup_design/provider_setup.dart';
import 'package:mockup_design/src/presentation/theme/theme.dart';
import 'package:mockup_design/src/presentation/screens/screens.dart';

void main() => runApp(MultiProvider(providers: providers(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mockup Design',
      initialRoute: '/onboarding',
      theme: CustomTheme.ligthTheme(),
      routes: {
        '/onboarding': (_) => const OnboardingScreen(),
        '/home': (_) => const HomeScreen(),
      },
    );
  }
}
