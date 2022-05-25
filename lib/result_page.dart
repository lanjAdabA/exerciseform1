// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'form_page.dart';

class ResultPage extends StatefulWidget {
  final String name;
  final String email;
  final String phone;
  final String age;
  final String gender;

  const ResultPage(
      {Key? key,
      required this.name,
      required this.email,
      required this.phone,
      required this.age,
      required this.gender})
      : super(key: key);
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RESULT")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
              child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Name:  ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Text("Email: " + widget.email),
              Text("Mobile: ${widget.phone}"),
              Text("Age: " + widget.age),
              Text("Gender: " + widget.gender),
            ],
          ))
        ],
      ),
    );
  }
}
