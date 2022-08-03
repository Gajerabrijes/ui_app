

import 'package:flutter/material.dart';
import 'package:ui_app/pages/registrationpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginformkey = GlobalKey<FormState>();
  bool _IsHide = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(),
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('assets/images/photo1.jpg',
                fit: BoxFit.cover,
                color: Colors.black54,
                colorBlendMode: BlendMode.darken),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/photo3.jpg",
                  height: 80.0,
                  width: 80.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Stack(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          height: 450,
                          width: 380,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 25.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Form(
                            key: _loginformkey,
                            child: Column(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 25.0,
                                  ),
                                ),
                                TextFormField(
                                  autocorrect: false,
                                  autofocus: false,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    prefixIcon: Icon(Icons.email),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    contentPadding: const EdgeInsets.all(15.0),
                                  ),
                                  validator: ((value) {
                                    if (value!.isEmpty) {
                                      return "Enter email";
                                    }
                                    if (!value.isvalidEmail()) {
                                      return "Enter valid Email";
                                    }
                                    return null;
                                  }),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextFormField(
                                  autocorrect: false,
                                  autofocus: false,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "passWord",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _IsHide = !_IsHide;
                                        });
                                      },
                                      icon: Icon(_IsHide
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                    ),
                                  ),
                                  obscureText: _IsHide,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    if (_loginformkey.currentState!
                                        .validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrationPage()));
                                    }
                                    ;
                                  },
                                  color: Colors.blue,
                                  padding: const EdgeInsets.symmetric(),
                                  minWidth: 150.0,
                                  splashColor: Colors.blueAccent[800],
                                  child: const Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("yes"),
                                                )
                                              ],
                                              title: Text("save your work"),
                                            );
                                          });
                                    },
                                    child: const Text(
                                      "DialogBox",
                                      style: TextStyle(fontSize: 30),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      _container();
                                    },
                                    child: Text("DialogBox")),
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "data:image/png;base64,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"),
                                ),
                                // CircleAvatar()
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }

  void _container() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("yes"),
            )
          ],
          title: const Text("save your work"),
        );
      },
    );
  }
}

extension Emailvalidator on String {
  bool isvalidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}