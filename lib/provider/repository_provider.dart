
import 'package:dojin_hub/repository/products_repository.dart';
import 'package:riverpod/riverpod.dart';

final productRepositoryProvider = Provider((ref) => ProductRepository());