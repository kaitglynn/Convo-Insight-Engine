```dart
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map<String, dynamic> userProfile = {
    'name': '',
    'avatar': '',
    'bio': '',
  };

  void _updateUserProfile() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    // TODO: Implement update user profile functionality
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              onSaved: (value) {
                userProfile['name'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Avatar URL'),
              onSaved: (value) {
                userProfile['avatar'] = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Bio'),
              onSaved: (value) {
                userProfile['bio'] = value;
              },
            ),
            RaisedButton(
              child: Text('Update Profile'),
              onPressed: _updateUserProfile,
            ),
          ],
        ),
      ),
    );
  }
}
```