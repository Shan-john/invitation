
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
 
import 'package:invitation/layout/responsive_layout_builder.dart';
 
import 'package:invitation/presentation/Screen/mainScreen.dart';
import 'package:lottie/lottie.dart';
 

void main() async {
  //app ensuring....!
  WidgetsFlutterBinding.ensureInitialized();
  ///firebase api and web setup
  await Firebase.initializeApp(

    options: const FirebaseOptions(
        apiKey: "AIzaSyB8RWCMUz213zmPtAZB_NVq4zBPqk-dXAI",
        authDomain: "wedding-invitation-card-sj.firebaseapp.com",
        projectId: "wedding-invitation-card-sj",
        storageBucket: "wedding-invitation-card-sj.appspot.com",
        messagingSenderId: "309684858289",
        appId: "1:309684858289:web:b50cfe39b94b564783e190"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Responsive_Layout()
    );
  }
}

