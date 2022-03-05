import 'package:nested/nested.dart';

import 'package:provider/provider.dart';

import 'package:mockup_design/src/features/home/providers/home_provider.dart';
import 'package:mockup_design/src/features/store/provider/product_provider.dart';
import 'package:mockup_design/src/features/store/provider/category_provider.dart';
import 'package:mockup_design/src/features/omboarding/providers/onboarding_provider.dart';

import 'package:mockup_design/src/features/store/domain/repository/product_repository.dart';
import 'package:mockup_design/src/features/store/aplication/product/mock_api_product_repository.dart';

List<SingleChildStatelessWidget> providers() => [
      Provider<ProductRepository>(
        create: (_) => MockApiProductRepositoryImpl(),
      ),
      ChangeNotifierProvider<OnboardingProvider>(
        create: (_) => OnboardingProvider(),
      ),
      ChangeNotifierProvider<HomeProvider>(
        create: (_) => HomeProvider(),
      ),
      ChangeNotifierProvider<CategoryProvider>(
        create: (_) => CategoryProvider(),
      ),
      ChangeNotifierProxyProvider<CategoryProvider, ProductProvider>(
        create: (context) => ProductProvider(repository: context.read<ProductRepository>()),
        update: (_, categoryProvider, product) => product!..category = categoryProvider.category,
      ),
    ];
