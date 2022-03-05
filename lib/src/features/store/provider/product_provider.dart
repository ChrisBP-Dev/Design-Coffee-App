import 'package:flutter/material.dart';
import 'package:mockup_design/src/features/store/domain/models/models.dart';
import 'package:mockup_design/src/features/store/domain/repository/product_repository.dart';
import 'package:mockup_design/src/features/store/provider/category_provider.dart';

class ProductProvider extends ChangeNotifier {
  ProductProvider({required ProductRepository repository}) : _repository = repository;

  final ProductRepository _repository;

  CategoryState _category = CategoryState.Cappuccino;

  CategoryState get category => _category;

  set category(CategoryState value) {
    _category = value;

    getProducts();

    notifyListeners();
  }

  List<Product> _products = [];

  List<Product> get products => _products;

  set products(List<Product> values) {
    _products = values;

    notifyListeners();
  }

  Future<void> getProducts() async {
    products = await _repository.fetchProducts(_category.name);
  }
}
