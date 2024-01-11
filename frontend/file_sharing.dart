```dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FileSharing extends StatefulWidget {
  @override
  _FileSharingState createState() => _FileSharingState();
}

class _FileSharingState extends State<FileSharing> {
  File? file;

  void getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if(result != null) {
      setState(() {
        file = File(result.files.single.path!);
      });
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Sharing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            file != null ? Text('Selected File: ${file!.path}') : Text('No File Selected'),
            ElevatedButton(
              onPressed: getFile,
              child: Text('Select File'),
            ),
            ElevatedButton(
              onPressed: () {
                if (file != null) {
                  // Call the function to send the file message
                  sendFileMessage(file);
                }
              },
              child: Text('Send File'),
            ),
          ],
        ),
      ),
    );
  }

  void sendFileMessage(File? file) {
    // This function will handle sending the file message
    // It will need to interact with the backend to actually send the file
  }
}
```