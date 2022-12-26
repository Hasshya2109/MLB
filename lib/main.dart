import 'package:flutter/material.dart';
import 'package:myloanbhai/firebase/auth.dart';
import 'package:myloanbhai/login_page.dart';
import 'package:myloanbhai/signin_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedin = false;

  // This widget is the root of your application.
  @override
  void initState() {
    final AuthenticationService auth = AuthenticationService();
    auth.user != null ? isLoggedin = true : isLoggedin = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
    );
  }
}
