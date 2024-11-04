// sku generator
import 'dart:math';

import 'package:flutter/widgets.dart';

String skug({String prefix = "P-", int length = 8}) {
  final _random = Random();
  final _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  return prefix + List.generate(length, (index) => _chars[_random.nextInt(_chars.length)]).join();
}


// [toText] extension on [String]
extension ToText on String? {
  Text? get toTextWidget => this ==null?null: Text(this!);
}