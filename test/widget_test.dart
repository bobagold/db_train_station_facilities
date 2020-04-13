// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dbstadafasta/api/stations.dart';
import 'package:dbstadafasta/app.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class StationsApiMock extends Mock implements StationsApi {}

void main() {
  testWidgets('Train station list with no results', (WidgetTester tester) async {
    var api = StationsApiMock();
    when(api.find('abcdefg'))
        .thenAnswer((_) async => []);

    // Build our app and trigger a frame.
    await tester.pumpWidget(Provider<StationsApi>(
      create: (context) => api,
      child: MyApp(),
    ));

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
  testWidgets('Train station list with a result', (WidgetTester tester) async {
    var api = StationsApiMock();
    when(api.find('stuttgart hbf'))
        .thenAnswer((_) async => ['Stuttgart Hbf']);

    // Build our app and trigger a frame.
    await tester.pumpWidget(Provider<StationsApi>(
      create: (context) => api,
      child: MyApp(),
    ));

    // Type search text.
    await tester.enterText(find.byTooltip('Type here'), 'stuttgart hbf');
    await tester.pump();

    // Verify that our search results have changed.
    expect(find.text('Please start to type station name'), findsNothing);
    expect(find.text('Stuttgart Hbf'), findsOneWidget);
  });
}
