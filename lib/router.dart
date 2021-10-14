import 'package:flutter/material.dart';
import 'package:flutter_pemula_submission/constant.dart';
import 'package:flutter_pemula_submission/home_page.dart';
import 'package:flutter_pemula_submission/sign_in_page.dart';

import 'detail_page.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signInRoute:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case detailRoute:
        // Cast the arguments to the correct
        // type: DetailArguments.
        final args = settings.arguments as DetailArguments;

        // Then, extract the required data from
        // the arguments and pass the data to the
        // correct screen.
        return MaterialPageRoute(
            builder: (_) => DetailPage(
                  title: args.title,
                  price: args.price,
                  asset: args.asset,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
