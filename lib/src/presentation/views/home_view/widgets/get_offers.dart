import 'package:flutter/material.dart';
import 'package:mockup_design/src/core/const/asset_routes.dart';
import 'package:mockup_design/src/presentation/widgets/offer_card.dart';

class GetOffers extends StatelessWidget {
  const GetOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
          height: 150,
          child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(22, 8, 8, 0),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => OfferCard(
                    image: AssetRoutes.onboarding(index + 1),
                  ))),
    );
  }
}
