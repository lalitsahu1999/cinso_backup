import 'package:cinso_backup/ui/testOpen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {

  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: "AIzaSyAt5fgNrH2dl3flt8W2vnvb_sEPNMRqGZs",
          authDomain: "cinso-global.firebaseapp.com",
          databaseURL: "https://cinso-global-default-rtdb.asia-southeast1.firebasedatabase.app",
          projectId: "cinso-global",
          storageBucket: "cinso-global.appspot.com",
          messagingSenderId: "1024351045261",
          appId: "1:1024351045261:web:9f536a39ecda56123f84c4",
          measurementId: "G-WGDNCBX0D9"
      ),
    );
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  }else{
    await Firebase.initializeApp();
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      navigatorObservers: [FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)],
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) =>  Testopen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/messages': (context) => Testopen(),
      },
    );
  }
}

