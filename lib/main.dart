import 'package:flutter/material.dart';
import 'package:flutter_rest_api/pages/login_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rest_api/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,

    ]);
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
      routes: {
        RegisterPage.routeNAme : (_) => RegisterPage(),
        LoginPage.routeName : (_) => LoginPage()
      },
    );
  }
}

