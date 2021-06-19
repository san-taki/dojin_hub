import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productDetailScreenCurrentPositionProvider = StateProvider((ref) => 0);

final pageControllerProvider = Provider((ref) => PageController());