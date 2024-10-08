import 'package:cinso_backup/firebase_options.dart';
import 'package:cinso_backup/ui/Error.dart';
import 'package:cinso_backup/ui/testOpen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';



var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {

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

    }else{
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform
      );

    }
   runApp(MyApp());
  } catch (e) {

    Fluttertoast.showToast(
        msg: "$e",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
        backgroundColor: Colors.red,
        fontSize: 16.0
    );

     runApp( MaterialApp(
       title: 'Flutter Demo',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(

         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
         useMaterial3: true,
       ),
       initialRoute: '/',
       routes: {
         // When navigating to the "/" route, build the FirstScreen widget.
         '/': (context) =>  ErrorScreen(msg: e.toString()),
         // When navigating to the "/second" route, build the SecondScreen widget.
         '/messages': (context) => Testopen(),
       },
     ));

  }


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
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) =>  Testopen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/messages': (context) => Testopen(),
      },
    );
  }
}

