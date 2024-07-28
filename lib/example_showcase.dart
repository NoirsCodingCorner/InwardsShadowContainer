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
        backgroundColor: Colors.grey,
        body: Center(
            child: SideShadow(
            shadowColor: Colors.red,
            beginalignment: Alignment.centerRight,
            endalignment: Alignment.centerLeft,
            maxIntensity: 0.9,
            indent: 0.1,
            child: SideShadow(
              shadowColor: Colors.blue,
              beginalignment: Alignment.bottomCenter,
              endalignment: Alignment.topCenter,
              maxIntensity: 0.2,
              indent: 0.05,
              child: SideShadow(
                shadowColor: Colors.green,
                maxIntensity: .7,
                beginalignment: Alignment.centerLeft,
                endalignment: Alignment.centerRight,
                child: SideShadow(
                  shadowColor: Colors.black,
                  beginalignment: Alignment.topCenter,
                  endalignment: Alignment.bottomCenter,
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