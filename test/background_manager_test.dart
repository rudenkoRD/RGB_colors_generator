import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rgb_test_task/background_manager.dart';

void main() {
  group('Testing background manager class', () {
    final backgroundManager = BackgroundManager();
    const colorGenerationSeed = 12345;

    test('Change background color test', () {
      backgroundManager.changeBackgroundColorRandomly(
        seed: colorGenerationSeed,
      );
      final newColor = backgroundManager.backgroundColor;

      //Color(0xFF3F3F3F) is expected to be generated using colorGenerationSeed
      expect(newColor, const Color(0xFF3F3F3F));
    });
  });
}
