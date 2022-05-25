import 'package:exerciseform1/form_page.dart';
import 'package:exerciseform1/result_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const FormPage(),
        "/second": (context) => const ResultPage(
              name: '',
              email: '',
              phone: '',
              age: '',
              gender: '',
            ),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
