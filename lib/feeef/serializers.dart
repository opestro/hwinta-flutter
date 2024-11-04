// color serializer
import 'dart:ui';

import 'package:feeef_marchant/src/core/colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ColorSerializer implements JsonConverter<Color, int> {
  const ColorSerializer();

  @override
  Color fromJson(int json) {
    return json.toColor(true);
  }

  @override
  int toJson(Color object) {
    return object.value;
  }
}
