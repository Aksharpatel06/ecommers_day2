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
          backgroundColor: const Color(0xff000000),
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Launch Button',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color(0xff4CAF50),
          ),
          body: Center(
            child: Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xff000000),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff53F92A),
                    blurRadius: 20,
                    blurStyle:BlurStyle.normal,
                  )
                ],
              ),
              child:const Text(
                'GO',
                style: TextStyle(
                  color: Colors.white,
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
