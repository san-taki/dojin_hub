
import 'package:dojin_hub/provider/domain_provider.dart';
import 'package:dojin_hub/ui/screen_model/book_storage_screen_model.dart';
import 'package:dojin_hub/ui/screen_model/home_screen_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => HomeScreenModel(),
);

final bookStorageScreenModelProvider = ChangeNotifierProvider.autoDispose(
  (ref) => BookStorageScreenModel(
    bookStorage: ref.watch(bookStorageProvider),
  ),
);
