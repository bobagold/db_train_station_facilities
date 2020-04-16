import 'package:dbstadafasta/api/facilities.dart';
import 'package:dbstadafasta/api/stations.dart';
import 'package:dbstadafasta/screens/station.dart';
import 'package:dbstadafasta/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stada/api.dart';
import 'package:bouncer/bouncer.dart';

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

  Subscription _debounceSubscription;

  static Bouncer _bouncer(BuildContext context) {
    try {
      return Provider.of<Bouncer>(context, listen: false);
    } catch (e) {
      return NoBouncer();
    }
  }

  void _searchTextChanged(BuildContext context, String search) {
    _debounceSubscription = _bouncer(context).debounce(
      request: () async {
        var api = Provider.of<StationsApi>(context, listen: false);
        return search.isNotEmpty ? await api.find(search) : [];
      },
      responseHandler: (List<Object> results) {
        setState(() {
          _search = search;
          _results = results;
        });
      },
      oldSubscription: _debounceSubscription,
    );
  }

  @override
  dispose() {
    _debounceSubscription?.cancel();
    super.dispose();
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
              decoration: InputDecoration(
                hintText: 'Enter a search term',
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
              onChanged: (value) => _searchTextChanged(context, value),
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
      leading: result is Station ? null : Icon(Icons.error),
      title: Text(
        result is Station ? result.name : result,
      ),
      onTap: result is Station ? () => _tapStation(context, result) : null,
    );
  }

  _tapStation(BuildContext context, Station station) async {
    var facilitiesPromise =
        Provider.of<FacilitiesApi>(context, listen: false).find(station.number);
    print(facilitiesPromise);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => StationScreen(
              station: station,
              facilities: facilitiesPromise,
            )));
  }
}
