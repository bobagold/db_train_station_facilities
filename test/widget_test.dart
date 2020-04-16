// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:async';

import 'package:dbstadafasta/api/facilities.dart';
import 'package:dbstadafasta/api/stations.dart';
import 'package:dbstadafasta/app.dart';
import 'package:dbstadafasta/screens/station.dart';
import 'package:fasta/api.dart' show Facility;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:stada/api.dart';

class StationsApiMock extends Mock implements StationsApi {}

class FacilitiesApiMock extends Mock implements FacilitiesApi {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets('Train station list with no results',
      (WidgetTester tester) async {
    var api = StationsApiMock();
    when(api.find('abcdefg')).thenAnswer((_) async => []);

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
    var apiStations = StationsApiMock();
    var apiFacilities = FacilitiesApiMock();
    var station = Station();
    station.name = 'Stuttgart Hbf';
    station.number = 1234;
    var facility = Facility();
    facility.description = 'Elevator';
    facility.equipmentnumber = 2345;
    when(apiStations.find('stuttgart hbf')).thenAnswer((_) async => [station]);
    when(apiFacilities.find(1234)).thenAnswer((_) async => [facility]);
    final mockObserver = MockNavigatorObserver();

    // Build our app and trigger a frame.
    await tester.pumpWidget(MultiProvider(
      providers: [
        Provider<StationsApi>(
          create: (context) => apiStations,
        ),
        Provider<FacilitiesApi>(
          create: (context) => apiFacilities,
        ),
      ],
      child: MaterialApp(
        home: MyHomePage(title: '-'),
        navigatorObservers: [mockObserver],
      ),
    ));

    // Type search text.
    await tester.enterText(find.byTooltip('Type here'), 'stuttgart hbf');
    await tester.pump();

    // Verify that our search results have changed.
    expect(find.text('Please start to type station name'), findsNothing);
    expect(find.text('Facilities:'), findsNothing);
    expect(find.text('Stuttgart Hbf'), findsOneWidget);

    await tester.tap(find.text('Stuttgart Hbf'));
    await tester.pumpAndSettle();

    verify(mockObserver.didPush(any, any));
    expect(find.text('Facilities:'), findsOneWidget);
    expect(find.text('Elevator 2345'), findsOneWidget);
  });
  testWidgets('Train station screen', (WidgetTester tester) async {
    var station = Station();
    station.name = 'Stuttgart Hbf';
    station.number = 1234;
    var facility = Facility();
    facility.description = 'Elevator';
    facility.equipmentnumber = 2345;
    var facilities = Completer<List<Object>>();

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: StationScreen(
          station: station,
          facilities: facilities.future,
        ),
      ),
    );

    // Verify that our station & facilities are displayed.
    expect(find.text('Stuttgart Hbf'), findsOneWidget);
    expect(find.text('Facilities:'), findsOneWidget);
    expect(find.text('Loading, please wait'), findsOneWidget);
    facilities.complete([facility]);
    await tester.pump();
    expect(find.text('Loading, please wait'), findsNothing);
    expect(find.text('Elevator 2345'), findsOneWidget);
  });
}
