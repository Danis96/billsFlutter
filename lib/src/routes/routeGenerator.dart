import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/routes/routeConstants.dart';
import 'package:flutter_login_signup/src/screens/login&register/loginPage.dart';
import 'package:flutter_login_signup/src/screens/login&register/signup.dart';
import 'package:flutter_login_signup/src/screens/login&register/welcomePage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    
    final args = settings.arguments;

    switch (settings.name) {
      case Home:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case Register:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case Login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case Dashboard: 
        // return MaterialPageRoute(builder: (_) => )
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(
          child: Container(
            child: Text('Error Screen'),
          ),
        ),
      );
    });
  }
}
