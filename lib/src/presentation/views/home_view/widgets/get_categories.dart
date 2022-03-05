import 'package:flutter/material.dart';
import 'package:mockup_design/src/features/store/provider/category_provider.dart';
import 'package:mockup_design/src/presentation/widgets/category_button.dart';
import 'package:mockup_design/src/presentation/widgets/subtitle.dart';
import 'package:provider/provider.dart';

class GetCategories extends StatelessWidget {
  const GetCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 20, 22, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Subtitle('Categories'),
            SizedBox(
              height: 55,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CategoryState.values.length,
                itemBuilder: (context, index) {
                  final category = CategoryState.values[index];
                  return CategoryButton(
                    category: category,
                    icon: icons[index],
                    onTap: () => context.read<CategoryProvider>().category = category,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

const icons = [
  Icons.coffee,
  Icons.coffee_maker_outlined,
  Icons.emoji_food_beverage_outlined,
];
