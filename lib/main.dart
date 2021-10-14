import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/constant.dart';
import 'package:flutter_pemula_submission/sign_in_page.dart';
import 'package:flutter_pemula_submission/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Untuk Pemula Submission',
      onGenerateRoute: Routing.generateRoute,
      initialRoute: signInRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(),
    );
  }
}
