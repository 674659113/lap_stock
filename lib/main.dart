import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lap_stock/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // NOTE: You must provide your own Firebase configuration here
  // You can get this from the Firebase Console (Project Settings > General > Your apps)
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "YOUR_API_KEY",
      authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
      projectId: "YOUR_PROJECT_ID",
      storageBucket: "YOUR_PROJECT_ID.appspot.com",
      messagingSenderId: "YOUR_SENDER_ID",
      appId: "YOUR_APP_ID",
    ),
  );

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}
