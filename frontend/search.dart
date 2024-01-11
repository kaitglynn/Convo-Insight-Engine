```dart
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _filter = new TextEditingController();
  String _searchText = "";

  _SearchBarState() {
    _filter.addListener(() {
      setState(() {
        _searchText = _filter.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.all(8.0),
      child: new TextField(
        controller: _filter,
        decoration: new InputDecoration(
          prefixIcon: new Icon(Icons.search),
          hintText: 'Search...',
        ),
      ),
    );
  }
}

class SearchResults extends StatelessWidget {
  final String query;

  SearchResults(this.query);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: searchChatHistory(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasError)
            return new Text('Error: ${snapshot.error}');
          else
            return createListView(context, snapshot);
        }
      },
    );
  }

  Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
    List values = snapshot.data;

    return new ListView.builder(
      itemCount: values.length,
      itemBuilder: (BuildContext context, int index) {
        return new Column(
          children: <Widget>[
            new ListTile(
              title: new Text(values[index]['chatMessage']),
            ),
            new Divider(height: 2.0),
          ],
        );
      },
    );
  }

  Future<List> searchChatHistory(String query) async {
    // TODO: Implement search functionality with backend
    return [];
  }
}
```