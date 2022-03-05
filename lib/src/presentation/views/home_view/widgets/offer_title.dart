import 'package:flutter/material.dart';
import 'package:mockup_design/src/presentation/widgets/subtitle.dart';

class OfferTitle extends StatelessWidget {
  const OfferTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.fromLTRB(22, 20, 22, 10),
        child: Subtitle('Special offer 🔥'),
      ),
    );
  }
}
