import 'package:exam_aya_al_zaboot/firebase_options.dart';
import 'package:exam_aya_al_zaboot/login.dart';
import 'package:exam_aya_al_zaboot/sph.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await SharedPrefHelper().initPref();
await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
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
                scaffoldBackgroundColor: Colors.white,

      ),
     home: LoginScreen(),
     debugShowCheckedModeBanner: false,
    );
  }
}

 