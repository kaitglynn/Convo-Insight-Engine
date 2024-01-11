```dart
import 'package:flutter/material.dart';

class ChatHistory extends StatefulWidget {
  @override
  _ChatHistoryState createState() => _ChatHistoryState();
}

class _ChatHistoryState extends State<ChatHistory> {
  List<Map<String, dynamic>> chatHistory = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat History'),
      ),
      body: ListView.builder(
        itemCount: chatHistory.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.message),
            title: Text(chatHistory[index]['message']),
            subtitle: Text(chatHistory[index]['time']),
          );
        },
      ),
    );
  }

  void loadChatHistory() {
    // TODO: Implement function to load chat history from the backend
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController _filter = new TextEditingController();

  SearchBar() {
    _filter.addListener(() {
      // TODO: Implement function to filter chat history based on search query
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: TextField(
        controller: _filter,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search...',
        ),
      ),
    );
  }
}
```