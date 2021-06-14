import 'package:dojin_hub/entity/book.dart';

// 即売会などのイベント
class DojinEvent {
  final String title;
  final DateTime startDateTime;
  final DateTime endDateTime;
  // 用意した本
  final List<Book> preparedBooks;
  // 売れた本
  final List<Book> soldBooks;

  DojinEvent({
    required this.title,
    required this.startDateTime,
    required this.endDateTime,
    required this.preparedBooks,
    required this.soldBooks,
  });
}
