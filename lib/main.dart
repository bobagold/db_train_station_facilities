import 'package:dbstadafasta/api/stations.dart';
import 'package:dbstadafasta/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stada/api.dart';

void main() => runApp(
      Provider(
        create: (context) => StationsApi(accessToken: ''),
        child: MyApp(),
      ),
    );

@immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deutsche Bahn Train Station Facilities',
      theme: themeData,
      home: MyHomePage(title: 'Train Stations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _search = '';

  // String | Station
  List<Object> _results = [];

  Future<void> _searchTextChanged(String search) async {
    var api = Provider.of<StationsApi>(context, listen: false);
    List<Object> results = search.isNotEmpty ? await api.find(search) : [];
    setState(() {
      _search = search;
      _results = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Tooltip(
            message: 'Type here',
            child: TextField(
              decoration: InputDecoration(hintText: 'Enter a search term'),
              onChanged: _searchTextChanged,
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: _itemBuilder)),
        ],
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    if (_search == '' && index == 0) {
      return ListTile(title: Text('Please start to type station name'));
    }
    if (_results.isEmpty && index == 0) {
      return ListTile(title: Text('Nothing found'));
    }
    if (index >= _results.length) {
      return null;
    }
    var result = _results[index];
    return ListTile(
      title: Text(
        result is Station ? result.name : result,
      ),
    );
  }
}
