import 'package:flutter/material.dart';
import 'package:mockup_design/src/features/home/providers/home_provider.dart';
import 'package:provider/provider.dart';

class CustomNav extends StatelessWidget {
  const CustomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.select<HomeProvider, int>((provider) => provider.currentIndex),
      onTap: (index) => context.read<HomeProvider>().currentIndex = index,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favourite'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout_outlined), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }
}
