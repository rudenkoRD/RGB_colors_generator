import 'package:flutter/material.dart';

import 'package:rgb_test_task/rgb_colors_manager.dart';

/// A manager of background state
class BackgroundManager{
  Color _backgroundColor;

  /// Returns current background color
  Color get backgroundColor => _backgroundColor;

  /// Creates a background manager
  ///
  /// The optional parameter [startColor] is used
  /// to initialize the color of the background
  ///
  /// By default [startColor] is set to [Colors.white]
  BackgroundManager({Color startColor=Colors.white}) :
        _backgroundColor = startColor;

  /// Changes [backgroundColor] to a randomly generated one
  ///
  /// The optional parameter [seed] is used to initialize
  /// the internal state of the generator
  void changeBackgroundColorRandomly({int? seed}){
    _backgroundColor = RgbColorsManager.generateRandomRgbColor(seed: seed);
  }
}
