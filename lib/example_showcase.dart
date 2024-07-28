import 'package:flutter/material.dart';
import 'package:inwardsshadowcontainer/inwardsshadowcontainer.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SideShadow(
            shadowColor: Colors.black,
            beginAlignment: Alignment.bottomCenter,
            endAlignment: Alignment.topCenter,
            maxIntensity: 1,
            child: SideShadow(
              shadowColor: Colors.black,
              beginAlignment: Alignment.centerLeft,
              endAlignment: Alignment.centerRight,
              maxIntensity: 1,
              child: SideShadow(
                shadowColor: Colors.black,
                beginAlignment: Alignment.topCenter,
                endAlignment: Alignment.bottomCenter,
                maxIntensity: 1,
                child: SideShadow(
                  shadowColor: Colors.blue,
                  beginAlignment: Alignment.centerRight,
                  endAlignment: Alignment.topLeft,
                  maxIntensity: 0.5,
                  indent: 0.5,
                  child: Container(
                    width: 400,
                    height: 400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
