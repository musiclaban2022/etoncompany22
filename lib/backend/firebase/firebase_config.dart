import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBlp5tp2sVMQ3dipGy_ZBvZzLNqu2Oq-i8",
            authDomain: "eton-company.firebaseapp.com",
            projectId: "eton-company",
            storageBucket: "eton-company.appspot.com",
            messagingSenderId: "814723926662",
            appId: "1:814723926662:web:f750bb555c7aa3da135f07",
            measurementId: "G-L0RJ2SGM3Z"));
  } else {
    await Firebase.initializeApp();
  }
}
