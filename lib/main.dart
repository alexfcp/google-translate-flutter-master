import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'screens/home-page.dart';
import 'dart:async';
import 'components/camera_type.dart';

Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Translate',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.grey[600],
      ),
      home: HomePage(title: 'Translate'),
    );
  }
}
