import 'package:application_calculadora/pages/calculator_page/calculator_page.dart';
import 'package:application_calculadora/pages/login_page/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora IMC',
      theme: ThemeData(
        primaryColor: const Color(0xFFC1007E),
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context)=>const LoginPage(),
        '/calculator': (context)=>const CalculatorPage(),
      },
    );
  }
}
