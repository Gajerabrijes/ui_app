import 'package:flutter/material.dart';
import 'package:ui_app/pages/sliderpage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const LoginPage(),
      // home: const RegistrationPage(),
      //home: const HomePage(),
      // home: const ChatPage(),
      // home: const WebViewPage(),
      home: const SliderPage(),
    );
  }
}
