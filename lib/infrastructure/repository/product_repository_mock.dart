import 'package:dojin_hub/domain/entity/book.dart';
import 'package:dojin_hub/domain/entity/book_status.dart';
import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/domain/entity/print_shop.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/domain/repository/product_repository.dart';
import 'package:uuid/uuid.dart';

class ProductRepositoryMock extends ProductRepository {
  @override
  void add() {
    // NO-OP
  }

  @override
  List<Product> fetch() {
    return [
      Product(id: Uuid().v1(), title: 'ほげほげ'),
      Product(
        id: Uuid().v1(),
        title: 'ふーばー',
        editions: [
          Edition(
            page: 50,
            number: 1,
            printingCosts: 100000,
            publicationDate: DateTime.now(),
            printShop: PrintShop(
              id: 999,
              name: '栄光',
            ),
            books: List.generate(
              500,
              (index) => Book(
                bookStatus: BookStatus.homeStock(),
              ),
            ),
          ),
          Edition(
            number: 2,
          ),
        ],
        atendedEvents: List.generate(
          2,
          (index) => DojinEvent(title: 'C${99 + index}'),
        ),
      ),
    ];
  }
}
