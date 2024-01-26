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
              'A Shadow Button',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Color(0xff009688),
          ),
          body: Center(
            child: Container(
                height: 100,
                width: 225,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  border: Border.all(color: Color(0xff009688)),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xff009688),
                      blurRadius: 20,
                      blurStyle:BlurStyle.normal,
                    )
                  ],
                ),
                child:const Text(
                  'Tap',
                  style: TextStyle(
                    color: Colors.black,
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
