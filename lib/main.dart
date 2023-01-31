import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fraudsentry/screen/splash_screen/splash_screen.dart';
import 'package:fraudsentry/utils.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();
final messengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        scaffoldMessengerKey: messengerKey,
        navigatorKey: navigatorKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen()
        // home: const onboardingpage1()
        // splashpage()
        // signuppage()
        // signinpage()
        );
  }
}
