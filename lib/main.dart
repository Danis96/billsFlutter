import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/routes/routeConstants.dart';
import 'package:flutter_login_signup/src/routes/routeGenerator.dart';
import 'package:flutter_login_signup/src/screens/login&register/welcomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'DanisBillApp',
      theme: ThemeData(
         primarySwatch: Colors.blue,
         ),
      debugShowCheckedModeBanner: false,
      initialRoute: Home,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: WelcomePage(),
    );
  }
}
