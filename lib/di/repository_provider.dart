import 'package:dojin_hub/domain/repository/product_repository.dart' as domain;
import 'package:dojin_hub/infrastructure/repository/product_repository.dart';
import 'package:riverpod/riverpod.dart';

final productRepositoryProvider = Provider<domain.ProductRepository>((ref) => ProductRepository());
