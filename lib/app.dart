import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:rgb_test_task/home_page.dart';

void main() {
  runApp(const App());

  //enter full screen mode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

/// Creates material app
class App extends StatelessWidget {
  ///static constructor
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RBG colors generator',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

