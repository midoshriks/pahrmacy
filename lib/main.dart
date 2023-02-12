import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacy/core/constant/color.dart';
import 'package:pharmacy/firebase_options.dart';
import 'package:pharmacy/root.dart';
import 'package:pharmacy/view/screen/onboarding.dart';

Future<void> main() async {
  //? this connection by firebase
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding(),
      routes: appRoutes,
    );
  }
}
