import 'package:flutter/cupertino.dart';

class CategoryProvider extends ChangeNotifier {
  CategoryState _category = CategoryState.Cappuccino;

  CategoryState get category => _category;

  set category(CategoryState value) {
    _category = value;

    notifyListeners();
  }

  bool isSelected(CategoryState value) => _category == value;
}

enum CategoryState { Cappuccino, Cold_Brew, Espresso }
