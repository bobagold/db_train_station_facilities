import 'package:dbstadafasta/api/facilities.dart';
import 'package:dbstadafasta/api/stations.dart';
import 'package:dbstadafasta/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var accessToken = '';

void main() {
  if (accessToken.isEmpty) {
    throw Exception('please copy this file to main_[yourchoice].dart, fill accessToken and run it');
  }
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (context) =>
              StationsApi(accessToken: accessToken),
        ),
        Provider(
          create: (context) =>
              FacilitiesApi(accessToken: accessToken),
        ),
      ],
      child: MyApp(),
    ),
  );
}
