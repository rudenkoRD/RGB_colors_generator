import 'package:flutter/material.dart';
import 'package:rgb_test_task/background_manager.dart';
import 'package:rgb_test_task/rgb_colors_manager.dart';

///Home screen content
class HomePage extends StatefulWidget {
  ///static constructor
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final BackgroundManager _backgroundManager = BackgroundManager();
  final _greetingText = 'Hey there';

  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        setState(() {
          _backgroundManager.changeBackgroundColorRandomly();
        });
      },
      child: Scaffold(
        backgroundColor: _backgroundManager.backgroundColor,
        body: Center(
          child: Text(
            _greetingText,
            style: _textTheme.headline4?.copyWith(
              color: RgbColorsManager.readableTextColor(
                _backgroundManager.backgroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
