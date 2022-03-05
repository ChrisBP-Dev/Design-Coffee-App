import 'package:mockup_design/src/features/store/domain/models/models.dart';

abstract class ProductRepository {
  Future<List<Product>> fetchProducts(String category);
}
