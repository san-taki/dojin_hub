//
// Generated file. Do not edit.
//

// ignore_for_file: lines_longer_than_80_chars

import 'package:file_picker/src/file_picker_web.dart';
import 'package:fluttertoast/fluttertoast_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  FilePickerWeb.registerWith(registrar);
  FluttertoastWebPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
