<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


## Features

This widget is able to supply shadows to the widget passed into it alignment directions.
## Getting started

Simply include, copy or use the shadowcontainer.dart into your project and call it via SideShadow to add shadow to your widget.


## Usage
This example shows how to add shadow to a SizedBox. The shadow direction is from top towards the bottom 
```dart
const SideShadow(
  shadowColor: Colors.black,
  beginalignment: Alignment.topCenter,
  endalignment: Alignment.bottomCenter,
  child: SizedBox(
    width: 300,
    height: 300),
)
```

