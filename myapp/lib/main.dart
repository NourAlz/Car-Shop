//import 'dart:ui' as ui;
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/Address.dart';
import 'package:myapp/pages/CategoryPage.dart';
import 'package:myapp/pages/Form.dart';
import 'package:myapp/pages/MainPage.dart';
import 'package:myapp/pages/Orders.dart';
import 'package:myapp/pages/Payment.dart';
import 'package:myapp/pages/SettingPage.dart';
import 'package:myapp/pages/login.dart';
import 'package:myapp/themes/darkmode.dart';

import 'pages/IntroPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode,
      home: LoginPage(),
      routes: {
        '/IntroPage' : (context) => const IntroPage(),
        '/MainPage' : (context) => const MainPage(),
        '/CategoryPage': (context) => const CategoryPage(),
        '/Orders':(context) => const Orders(),
        '/Address': (context) => const Address(),
        '/FormPage':(context) => const FormPage(),
        '/Setting':(context) => const SettingPage(),
        '/Payment':(context) => const PaymentPage(),
      },
    );
  }
}

