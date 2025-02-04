import 'package:flutter/material.dart';

import '../lib/inwardsshadowcontainer.dart';

void main() {
  runApp(TestApp());
}
class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SideShadow(
            shadowColor: Colors.red,
            beginAlignment: Alignment.topCenter,
            endAlignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}