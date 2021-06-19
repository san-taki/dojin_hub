import 'package:dojin_hub/ui/component_model/common_appbar_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final commonAppBarModelProvider = StateNotifierProvider.autoDispose<
    CommonAppBarModelController, CommonAppBarModel>(
  (ref) => CommonAppBarModelController(
    CommonAppBarModel(),
  ),
);
