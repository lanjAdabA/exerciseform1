import 'package:exerciseform1/result_page.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String name = "";
  String email = "";
  String phoneNumber = "";
  String age = "";
  String gender = "";

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      controller: nameController,
      decoration: const InputDecoration(labelText: "Name :"),
      validator: (name) {
        if (name == null || name.isEmpty) {
          return " NAME field cannot be Empty";
        }

        if (!RegExp(r"^[a-zA-Z\ 0-9]*$").hasMatch(name)) {
          return " Type your correct NAME !";
        }

        return null;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: emailController,
      decoration: const InputDecoration(labelText: "E-mail :"),
      validator: (email) {
        if (email == null || email.isEmpty) {
          return "Email field cannot be empty";
        }

        if (!RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(email)) {
          return " Please Provide Correct EMAIL !";
        }
        return null;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      controller: phoneController,
      decoration: const InputDecoration(labelText: "Phone Number :"),
      validator: (phone) {
        if (phone == null || phone.isEmpty) {
          return "Phone field cannot be empty";
        }

        if (!RegExp(r'\d{10}$').hasMatch(phone)) {
          return " Please Provide Correct PHONE NUMBER !";
        }
        return null;
      },
    );
  }

  Widget _buildAge() {
    return TextFormField(
      controller: ageController,
      decoration: const InputDecoration(labelText: "Age :"),
      validator: (age) {
        if (age == null || age.isEmpty) {
          return "Phone field cannot be empty";
        }

        if (!RegExp(r'\d{1,2}$').hasMatch(age)) {
          return " Check your AGE !";
        }
        return null;
      },
    );
  }

  Widget _buildGender() {
    return TextFormField(
      controller: genderController,
      decoration: const InputDecoration(labelText: "Gender :"),
      validator: (sex) {
        if (sex == null || sex.isEmpty) {
          return " This field cannot be Empty";
        }

        if (!RegExp(r"^[a-zA-Z\ 0-9]*$").hasMatch(sex)) {
          return " Enter Gender !";
        }

        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Demo"),
      ),
      body: Container(
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                _buildName(),
                _buildEmail(),
                _buildPhoneNumber(),
                _buildAge(),
                _buildGender(),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    child: const Text(
                      "SUBMIT",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => {
                          if (_formkey.currentState!.validate())
                            {
                              name = nameController.text,
                              email = emailController.text,
                              phoneNumber = phoneController.text,
                              age = ageController.text,
                              gender = genderController.text,
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ResultPage(
                                          name: name,
                                          email: email,
                                          phone: phoneNumber,
                                          age: age,
                                          gender: gender))),
                              /* ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(" Processing Data")
                                      )
                                      ) */
                            }
                        })
              ],
            )),
        margin: const EdgeInsets.all(26),
      ),
    );
  }
}
