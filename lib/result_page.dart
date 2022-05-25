// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: const {0: FlexColumnWidth(.25)},
              children: [
                TableRow(
                  children: [
                    const Text("Name :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Text(
                      widget.name,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Text("Email :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Text(
                      widget.email,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    const Text("Phone :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Text(
                      widget.phone,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    const Text("Age :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Text(
                      widget.age + " years",
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    const Text("Gender :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Text(
                      widget.gender,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );

    /* Scaffold(
      appBar: AppBar(title: const Text("RESULT")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
              child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Name:rr  ",
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
    ); */
  }
}
