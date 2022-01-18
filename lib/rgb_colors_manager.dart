import 'dart:math';

import 'package:flutter/material.dart';

/// Handles work with colors
class RgbColorsManager {
  static const _maxValueOfColorChannel = 255;
  static const _middleLuminance = 0.5;

  /// Returns fully opaque random RGB color
  ///
  /// The optional parameter [seed] is used to initialize
  /// the internal state of the generator
  static Color generateRandomRgbColor({int? seed}) => Color.fromARGB(
        _maxValueOfColorChannel,
        _getRandomNumber(_maxValueOfColorChannel, seed: seed),
        _getRandomNumber(_maxValueOfColorChannel, seed: seed),
        _getRandomNumber(_maxValueOfColorChannel, seed: seed),
      );

  /// Returns a random number between 0 and [max], both inclusive
  static int _getRandomNumber(int max, {int? seed}) =>
      Random(seed).nextInt(max + 1);

  /// Returns readable color based on the luminance of [backgroundColor]
  ///
  /// If the luminance of [backgroundColor] is less than 0,5
  /// it returns white color otherwise, it returns black color
  static Color readableTextColor(Color backgroundColor) {
    return backgroundColor.computeLuminance() < _middleLuminance
        ? Colors.white
        : Colors.black;
  }
}
