import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase1/PaymentPage.dart';

import 'firebase_options.dart'; 
import 'PaymentPage.dart';// Import the Firebase options
import 'userorderpage.dart';// Import the Firebase options
import 'AdminOrderPage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase with options from the firebase_options.dart file
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firestore Integration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AdminOrderPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
