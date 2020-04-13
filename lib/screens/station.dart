import 'package:flutter/material.dart';
import 'package:stada/api.dart';

@immutable
class StationScreen extends StatelessWidget {
  final Station station;

  const StationScreen({Key key, this.station}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(station.name),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Facilities:'),
            leading: Icon(Icons.accessibility),
          ),
        ],
      ),
    );
  }
}
