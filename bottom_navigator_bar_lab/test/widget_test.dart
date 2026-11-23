import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bottom_navigator_bar_lab/main.dart';

void main() {
  testWidgets('BottomNavigationBar switches between 4 screens', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: BottomNavLab()));

    // Verify initial Home screen
    expect(find.text('Home'), findsNWidgets(2)); // AppBar/Tab label + body text

    // Tap Alarm tab
    await tester.tap(find.byIcon(Icons.alarm));
    await tester.pump();
    expect(find.text('Alarm'), findsNWidgets(2));

    // Tap Business tab
    await tester.tap(find.byIcon(Icons.business));
    await tester.pump();
    expect(find.text('Business'), findsNWidgets(2));

    // Tap School tab
    await tester.tap(find.byIcon(Icons.school));
    await tester.pump();
    expect(find.text('School'), findsNWidgets(2));
  });
}
