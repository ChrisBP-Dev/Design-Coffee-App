import 'package:flutter/material.dart';

import 'package:mockup_design/src/presentation/views/home_view/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBar(),
        SearchField(),
        GetCategories(),
        GetProducts(),
        OfferTitle(),
        GetOffers(),
      ],
    );
  }
}
