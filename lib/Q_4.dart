import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Gradient Button',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Color(0xff48416A),
          ),
          body: Center(
            child: Container(
                height: 70,
                width: 225,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  gradient:const LinearGradient(
                    colors: [
                      Color(0xff8D34B8),
                      Color(0xff5764D5),
                      Color(0xff2591F0),
                    ]
                  )
                ),
                child:const Text(
                  'Flutter',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
