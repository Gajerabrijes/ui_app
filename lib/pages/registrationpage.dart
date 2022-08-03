import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
                          height: 320,
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
                          child: Column(
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 25.0,
                                ),
                              ),
                              TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Username",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: const EdgeInsets.all(15.0),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  contentPadding: const EdgeInsets.all(15.0),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextField(
                                autocorrect: false,
                                autofocus: false,
                                obscureText: true,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                  hintText: "password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10.0),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.blue,
                                padding: const EdgeInsets.symmetric(),
                                minWidth: 150.0,
                                splashColor: Colors.blue,
                                child: const Text(
                                  "CREATE ACCOUNT",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
