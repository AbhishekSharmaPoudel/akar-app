import 'package:akar/Screens/splash.dart';
import 'package:akar/admin/admin_login.dart';
import 'package:akar/userpages/controllerpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/home.dart';
import 'Screens/login.dart';
import 'Screens/register.dart';
import 'Screens/recover.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyCxzPHuDDAfduqnMUE5Wymgdwc5TwHhu4o',
          appId: '1:897372433402:android:4ace3450735673096d9243',
          messagingSenderId: '897372433402',
          projectId: 'demo1-3efb8'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const MySplash(),
        "/register": (context) => const RegistrationPage(),
        "/login": (context) => const SignInPage(),
        "/recover": (context) => const RecoverPage(),
        "/UserPages": (context)=> const MyCont(),
        "/admin":(context)=> const AdminLogin(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      //home: MyHome(),
    );
  }
}
