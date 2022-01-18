import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rgb_test_task/rgb_colors_manager.dart';

void main() {
  group('Testing rgb colors class', () {
    const colorGenerationSeed = 12345;

    test('Color generation test', () {
      final color =
          RgbColorsManager.generateRandomRgbColor(seed: colorGenerationSeed);
      //Color(0xFF3F3F3F) is expected to be generated using colorGenerationSeed
      expect(color, const Color(0xFF3F3F3F));
    });

    test('Text color based on luminance of background color test', () {
      var color = RgbColorsManager.readableTextColor(const Color(0xFFD5BB77));
      expect(color, Colors.black);
      color = RgbColorsManager.readableTextColor(const Color(0xFF45688F));
      expect(color, Colors.white);
    });
  });
}
