import 'package:dojin_hub/domain/entity/book.dart';
import 'package:dojin_hub/domain/entity/currency.dart';
import 'package:dojin_hub/domain/entity/dojin_event.dart';
import 'package:dojin_hub/domain/entity/edition.dart';
import 'package:dojin_hub/domain/entity/outsourcer.dart';
import 'package:dojin_hub/domain/entity/price.dart';
import 'package:dojin_hub/domain/entity/print_shop.dart';
import 'package:dojin_hub/domain/entity/product.dart';
import 'package:dojin_hub/domain/entity/tax_rate.dart';
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
            homeStock: HomeStock(
              count: 50,
            ),
            outSourcerStock: OutSourcerStock(
              count: 50,
              outsourcer: Outsourcer(
                shopId: 'ddd',
                name: 'メロンブックス',
              ),
              price: OutsourcingPrice(
                currency: Currency.jpy(),
                taxRate: TaxRate.rate8(),
                value: 1000,
                wholesaleRatio: 70,
              ),
            ),
            soldAtDojinEvent: SoldAtDojinEvent(
              count: 120,
              dojinEvent: DojinEvent(title: 'コミケC88'),
              price: Price(
                currency: Currency.jpy(),
                taxRate: TaxRate.rate8(),
                value: 1000,
              ),
            ),
            soldByOutsourcer: SoldByOutsourcer(
              count: 33,
              outsourcer: Outsourcer(
                shopId: 'fff',
                name: 'とらのあな',
              ),
              price: OutsourcingPrice(
                currency: Currency.jpy(),
                taxRate: TaxRate.rate8(),
                value: 1000,
                wholesaleRatio: 70,
              ),
            ),
            freeDistribution: FreeDistribution(
              count: 5,
              dojinEvent: DojinEvent(
                title: 'C99',
              ),
            ),
          ),
        ],
      ),
    ];
  }
}
