// extention to int to convert int to color
import 'dart:ui';

import 'package:flutter/material.dart';

extension ColorExtension on int {
  Color toColor(bool isARGB) {
    // color in web is 0xRRGGBBAA or 0xRRGGBB
    // but in dart is 0xAABBGGRR
    // 1. check if in RGB format
    if (this <= 0xFFFFFF) {
      return Color(0xFF000000 + this);
    } else {
      // 2. check if in ARGB format
      if (isARGB) {
        return Color(this);
      } else {
        // 3. convert ARGB to RGB
        return Color(0xFF000000 + (this & 0xFFFFFF));
      }
    }
  }
}

// add extension to ColorScheme to convert to Map<String, dynamic>
extension ColorSchemeExtension on ColorScheme {
  Map<String, dynamic> toJson() {
    return {
      'primary': primary.value,
      'onPrimary': onPrimary.value,
      'secondary': secondary.value,
      'onSecondary': onSecondary.value,
      'background': background.value,
      'onBackground': onBackground.value,
      'surface': surface.value,
      'onSurface': onSurface.value,
      'error': error.value,
      'onError': onError.value,
      'brightness': brightness.toString(),
    };
  }
}
