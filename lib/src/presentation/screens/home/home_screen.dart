import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:mockup_design/src/presentation/views/views.dart';
import 'package:mockup_design/src/features/home/providers/home_provider.dart';
import 'package:mockup_design/src/presentation/screens/home/widgets/custom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: context.select<HomeProvider, int>((provider) => provider.currentIndex),
          children: const [
            HomeView(),
            FavouriteView(),
            CartView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: const CustomNav(),
      ),
    );
  }
}
