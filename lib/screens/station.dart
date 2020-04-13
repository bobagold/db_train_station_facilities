import 'package:fasta/api.dart' show Facility;
import 'package:flutter/material.dart';
import 'package:stada/api.dart';

@immutable
class StationScreen extends StatelessWidget {
  final Station station;
  final List<Object> facilities;

  const StationScreen({
    Key key,
    @required this.station,
    @required this.facilities,
  }) : super(key: key);

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
          Expanded(child: ListView.builder(itemBuilder: _itemBuilder)),
        ],
      ),
    );
  }
  Widget _itemBuilder(BuildContext context, int index) {
    if (facilities.isEmpty && index == 0) {
      return ListTile(title: Text('Nothing found'));
    }
    if (index >= facilities.length) {
      return null;
    }
    var result = facilities[index];
    return ListTile(
        leading: Icon(result is Facility ? _icon(result.state) : Icons.error),
        title: Text(
          result is Facility ? _description(result) : result,
        ),
        trailing: result is Facility ? Icon(_type(result.type)) : null,
    );
  }

  String _description(Facility result) => '${result.description ?? result.type} ${result.equipmentnumber}';

  IconData _icon(String state) {
    if (state == 'ACTIVE') {
      return Icons.check;
    }
    if (state == 'INACTIVE') {
      return Icons.cancel;
    }
    return Icons.help;
  }

  IconData _type(String type) {
    if (type == 'ESCALATOR') {
      return Icons.swap_vert;
    }
    if (type == 'ELEVATOR') {
      return Icons.swap_horiz;
    }
  }
}
