import 'package:flutter/material.dart';
import 'package:mockup_design/src/core/helpers/extensions.dart';
import 'package:mockup_design/src/features/store/domain/models/models.dart';
import 'package:mockup_design/src/features/store/provider/product_provider.dart';
import 'package:mockup_design/src/presentation/widgets/product_card.dart';
import 'package:provider/provider.dart';

class GetProducts extends StatelessWidget {
  const GetProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = context.select<ProductProvider, List<Product>>((provider) => provider.products);
    return SliverToBoxAdapter(
      child: SizedBox(
          height: context.getHeight * 0.38,
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(22, 8, 8, 0),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) => ProductCard(product: products[index]),
          )),
    );
  }
}
