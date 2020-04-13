import 'package:dbstadafasta/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  List<String> _results = [];

  void _searchTextChanged(String search) {
    setState(() {
      _search = search;
      _results = search.contains(RegExp(r'Stuttgart Hbf', caseSensitive: false))
          ? ['Stuttgart Hbf']
          : [];
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
    return ListTile(
        title: Text(
      _results[index],
    ));
  }
}
