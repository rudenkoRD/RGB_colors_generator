import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rgb_test_task/home_page.dart';

void main() {
  Widget createHomeScreen() => const MaterialApp(
        home: HomePage(),
      );

  group('Home page widget tests', () {
    testWidgets('Show Hey there text test', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      await tester.pumpAndSettle();

      expect(find.text('Hey there'), findsOneWidget);
    });
  });
}
