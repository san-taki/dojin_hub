import 'package:dojin_hub/ui/listener/text_field_listener.dart';
import 'package:dojin_hub/ui/listener/widget_listener.dart';

class FullScreenListener extends WidgetListener {}

class TextFormListener extends TextFieldListener {
  final int id;
  TextFormListener(this.id);
}
