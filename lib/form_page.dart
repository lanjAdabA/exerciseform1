import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
/* final String _name = "";
  final String _email = "";
  final String _phoneNumber = "";
  final String _age = "";
  final String _gender = ""; */
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Name"),
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Email"),
    );
    ;
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Phone Number"),
    );
    ;
  }

  Widget _buildAge() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Age"),
    );
    ;
  }

  Widget _buildGender() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Gender"),
    );
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Demo"),
      ),
      body: Container(
        child: Form(
            child: Column(
          children: <Widget>[
            _buildName(),
            _buildEmail(),
            _buildPhoneNumber(),
            _buildAge(),
            _buildGender()
          ],
        )),
        margin: const EdgeInsets.all(26),
      ),
    );
  }
}
