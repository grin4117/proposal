import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAPkVMTtqYzUEQT8MN3wuX15h-EceOvbAw",
            authDomain: "proposal-325gq3.firebaseapp.com",
            projectId: "proposal-325gq3",
            storageBucket: "proposal-325gq3.appspot.com",
            messagingSenderId: "609228634731",
            appId: "1:609228634731:web:0321877b317d3978d24f2e"));
  } else {
    await Firebase.initializeApp();
  }
}
