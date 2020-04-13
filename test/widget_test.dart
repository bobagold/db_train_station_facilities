// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dbstadafasta/main.dart';

void main() {
  testWidgets('Train station list', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that search results have a placeholder.
    expect(find.text('Please start to type station name'), findsOneWidget);
    expect(find.text('Nothing found'), findsNothing);

    // Type search text.
    await tester.enterText(find.byTooltip('Type here'), 'abcdefg');
    await tester.pump();

    // Verify that our search results have changed.
    expect(find.text('Please start to type station name'), findsNothing);
    expect(find.text('Nothing found'), findsOneWidget);

    // Clear search text.
    await tester.enterText(find.byTooltip('Type here'), '');
    await tester.pump();

    // Verify that search results have a placeholder.
    expect(find.text('Please start to type station name'), findsOneWidget);
    expect(find.text('Nothing found'), findsNothing);
  });
}
