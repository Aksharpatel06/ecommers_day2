import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.cyan,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.redAccent,
              title: const Text(
                'Button',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
            ),
            body: Center(
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 190,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pinkAccent,
                        blurRadius: 50,
                        spreadRadius: 3,
                      )
                    ],
                    // color: Colors.cyanAccent,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(
                      colors:[
                        Colors.purpleAccent,
                        Colors.pinkAccent,
                        Colors.redAccent,
                      ],
                      begin: Alignment.topLeft,
                    )
                ),
                child: const Text(
                  'Call on action',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}