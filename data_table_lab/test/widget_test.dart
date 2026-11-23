import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:data_table_lab/main.dart';

void main() {
  testWidgets('DataTable renders car rows and sorts by Car Make', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: CarTablePage()));

    expect(find.text('Honda'), findsOneWidget);
    expect(find.text('Toyota'), findsOneWidget);
    expect(find.text('BMW'), findsOneWidget);

    await tester.tap(find.text('Car Make'));
    await tester.pump();
    expect(find.byIcon(Icons.arrow_upward), findsOneWidget);
  });
}
