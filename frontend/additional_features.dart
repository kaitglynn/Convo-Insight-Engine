```dart
import 'package:flutter/material.dart';

class AdditionalFeatures extends StatefulWidget {
  @override
  _AdditionalFeaturesState createState() => _AdditionalFeaturesState();
}

class _AdditionalFeaturesState extends State<AdditionalFeatures> {
  bool _notificationEnabled = false;
  String _currentTheme = 'Light';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Additional Features'),
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text('Enable Notifications'),
            value: _notificationEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationEnabled = value;
                triggerNotification();
              });
            },
          ),
          ListTile(
            title: Text('Theme'),
            trailing: DropdownButton<String>(
              value: _currentTheme,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  _currentTheme = newValue;
                  applyTheme();
                });
              },
              items: <String>['Light', 'Dark', 'Blue', 'Green']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          ListTile(
            title: Text('Help & Support'),
            trailing: Icon(Icons.help),
            onTap: () {
              Navigator.pushNamed(context, '/helpSupport');
            },
          ),
        ],
      ),
    );
  }

  void triggerNotification() {
    // Code to trigger notification goes here
  }

  void applyTheme() {
    // Code to apply theme goes here
  }
}
```