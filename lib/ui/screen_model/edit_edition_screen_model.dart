import 'package:dojin_hub/domain/entity/book.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/domain/store/product_store.dart';
import 'package:dojin_hub/flamework/model_controller_type.dart';
import 'package:dojin_hub/flamework/model_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_edition_screen_model.freezed.dart';

@freezed
class EditEditionScreenModel extends ModelType with _$EditEditionScreenModel {
  const factory EditEditionScreenModel({
    required String productId,
    required Edition edition,
    required ProductStoreController productStoreController,
  }) = _EditEditionScreenModel;
}

class EditEditionScreenModelController
    extends ModelControllerType<EditEditionScreenModel> {
  EditEditionScreenModelController(EditEditionScreenModel model) : super(model);

  void setBooks(List<Book> books) {}

  void save() {}
}
