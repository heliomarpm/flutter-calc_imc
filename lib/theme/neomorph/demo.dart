import 'package:flutter/material.dart';

import 'buttons.dart';
import 'inputs.dart';

class DemoNeomorph extends StatefulWidget {
  const DemoNeomorph({super.key});

  @override
  State<DemoNeomorph> createState() => _DemoNeomorphState();
}

class _DemoNeomorphState extends State<DemoNeomorph> {
  Color get textColor => const Color(0xff282D3F);
  Color get shadowDown => const Color(0xffDFE6F0);
  Color get shadowUp => const Color(0xffffffff);
  double get w => MediaQuery.of(context).size.width;
  double get h => MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          "Neomorphic UI Kit",
          style: TextStyle(color: textColor),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: const Color(0xffF2F3F7),
              padding: const EdgeInsets.all(20),
              width: w,
              child: Column(
                children: <Widget>[
                  GradientButton(
                    width: w - 40,
                    height: 60,
                    child: Text(
                      "Button",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FlatColorButton(
                    width: w - 40,
                    height: 60,
                    child: Text(
                      "Button",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FlatColorPressed(
                    width: w - 40,
                    height: 60,
                    child: Text(
                      "Button Pressd",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const GradientButton(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.hourglass_empty,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const GradientButton(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                        child: Icon(
                          Icons.info_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      FlatColorButton(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.insert_emoticon,
                          size: 30,
                          color: textColor,
                        ),
                      ),
                      FlatColorButton(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                        child: Icon(
                          Icons.keyboard_voice,
                          size: 30,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const GradientButton(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.hourglass_empty,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const GradientButton(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                        child: Icon(
                          Icons.info_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      FlatColorPressed(
                        width: 60,
                        height: 60,
                        child: Icon(
                          Icons.insert_emoticon,
                          size: 30,
                          color: textColor,
                        ),
                      ),
                      FlatColorPressed(
                        width: 60,
                        height: 60,
                        borderRadius: 30,
                        child: Icon(
                          Icons.keyboard_voice,
                          size: 30,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: w - 40,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Column(
                children: <Widget>[
                  RoundedInput(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}