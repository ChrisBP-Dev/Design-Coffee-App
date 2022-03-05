import 'package:mockup_design/src/core/const/asset_routes.dart';
import 'package:mockup_design/src/features/store/domain/models/product/product.dart';
import 'package:mockup_design/src/features/store/domain/repository/product_repository.dart';

class MockApiProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> fetchProducts(String category) async {
    return products.map(Product.fromJson).where((product) => product.category == category).toList();
  }
}

const products = [
  {
    'image': AssetRoutes.photo1,
    'name': 'Cappuccino',
    'category': 'Cappuccino',
    'description': 'with chocolate',
    'price': 5.12,
    'raiting': 4.7,
  },
  {
    'image': AssetRoutes.photo2,
    'name': 'Other Name',
    'category': 'Cappuccino',
    'description': 'with something else',
    'price': 4.15,
    'raiting': 4.5,
  },
  {
    'image': AssetRoutes.photo3,
    'name': 'Cappuccino',
    'category': 'Cappuccino',
    'description': 'with low fat milk',
    'price': 4.32,
    'raiting': 4.8,
  },
  {
    'image': AssetRoutes.photo4,
    'name': 'Other Name',
    'category': 'Cappuccino',
    'description': 'with something else',
    'price': 5.12,
    'raiting': 4.9,
  },
  {
    'image': AssetRoutes.photo5,
    'name': 'Other Name',
    'category': 'Cappuccino',
    'description': 'with chocolate',
    'price': 6.25,
    'raiting': 4.7,
  },

  /// cold brew
  {
    'image': AssetRoutes.photo5,
    'name': 'Other Name',
    'category': 'Cold_Brew',
    'description': 'with something else',
    'price': 6.25,
    'raiting': 4.7,
  },
  {
    'image': AssetRoutes.photo3,
    'name': 'Cappuccino',
    'category': 'Cold_Brew',
    'description': 'with chocolate',
    'price': 4.25,
    'raiting': 4.7,
  },

  /// Espresso
  {
    'image': AssetRoutes.photo2,
    'name': 'Other Name',
    'category': 'Espresso',
    'description': 'with something else',
    'price': 3.25,
    'raiting': 4.9,
  },
  {
    'image': AssetRoutes.photo1,
    'name': 'Cappuccino',
    'category': 'Espresso',
    'description': 'with chocolate',
    'price': 5.25,
    'raiting': 4.2,
  },
];
