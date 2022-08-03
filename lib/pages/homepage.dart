import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            height: 300,
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
                                  padding:  EdgeInsets.symmetric(
                                    vertical: 25.0,
                                  ),
                                ),
                              ],
                            ),
                            
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
