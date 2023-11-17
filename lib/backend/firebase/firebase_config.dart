import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAztaUHffsZkZYPM1DI4ZqCrOAsXF2a5GA",
            authDomain: "groupf-23f5a.firebaseapp.com",
            projectId: "groupf-23f5a",
            storageBucket: "groupf-23f5a.appspot.com",
            messagingSenderId: "436285060607",
            appId: "1:436285060607:web:bec726749548ef9f22e3ca"));
  } else {
    await Firebase.initializeApp();
  }
}
