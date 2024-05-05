
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:invitation/layout/responsive_layout_builder.dart';
 
 

 
void main() async {
  // Ensure that Flutter is initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the provided configuration options.
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB8RWCMUz213zmPtAZB_NVq4zBPqk-dXAI",
      authDomain: "wedding-invitation-card-sj.firebaseapp.com",
      projectId: "wedding-invitation-card-sj",
      storageBucket: "wedding-invitation-card-sj.appspot.com",
      messagingSenderId: "309684858289",
      appId: "1:309684858289:web:b50cfe39b94b564783e190",
      
    ),
  );

  // Run the Flutter application.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Define the home screen using a Responsive_Layout widget.
      home: Responsive_Layout(),
    );
  }
}
