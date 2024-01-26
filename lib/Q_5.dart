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
              'An Indian Flag',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color(0xff1F8EE7),
          ),
          body: Center(
            child: Container(
                height: 150,
                width: 225,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    border: Border.all(color: Colors.black,width: 0.5),
                    gradient: const LinearGradient(
                      begin: AlignmentDirectional.topStart,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xffFF5722),
                        Colors.white,
                        Color(0xff388E3C),
                      ]
                    )
                ),
                child:const Text(
                  '🛞',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
