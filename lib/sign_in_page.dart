import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang',
              style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Minuman Herbal Bu Win',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
            SizedBox(
              height: 60,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Email address',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.grey[850],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            // Navigator.pushReplacementNamed(context, mainRoute);
                            Navigator.pushReplacementNamed(context, homeRoute);
                          }
                        },
                        child: Container(
                          height: 60.0,
                          width: 60.0,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          decoration: BoxDecoration(
                              color: const Color(0xffF96A0C),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(3.0, 3.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 2.0,
                                  color: const Color(0xffFDD5BB),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 55.0,
                  width: 55.0,
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/GoogleLogo.png',
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  height: 55.0,
                  width: 55.0,
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/twiter.png',
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  height: 55.0,
                  width: 55.0,
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/facebook.png',
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
