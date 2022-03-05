import 'package:flutter/material.dart';
import 'package:mockup_design/src/features/store/provider/category_provider.dart';
import 'package:provider/provider.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({Key? key, required this.category, this.onTap, required this.icon}) : super(key: key);

  final CategoryState category;

  final IconData icon;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isSelected = context.select<CategoryProvider, bool>(((provider) => provider.isSelected(category)));

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: !isSelected ? Colors.white : null,
          shape: const StadiumBorder(),
          elevation: isSelected ? null : 0,
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        ),
        onPressed: onTap,
        icon: Icon(
          icon,
          size: 16,
          color: isSelected ? null : Colors.black,
        ),
        label: Text(
          category.name,
          style: theme.textTheme.caption?.copyWith(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
