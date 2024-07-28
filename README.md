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

## Usage
This widget can be used to cast shadows onto the widget in it. Color, extend and intensity of the shadow can be adjusted. The following shows an example of an empty container with side shadows applied to it.


![InnerShadow](https://github.com/user-attachments/assets/3a51b35d-96b3-415a-af05-e933a23a3dab)

## Getting started

Simply include, copy or use the shadowcontainer.dart into your project and call it via SideShadow to add shadow to your widget.


## Example
This example shows how to add shadow to a SizedBox. The shadow direction is from top towards the bottom 
```dart
const SideShadow(
  shadowColor: Colors.black,                //Color of the shadow
  beginAlignment: Alignment.topCenter,      //Starting Alignment
  endAlignment: Alignment.bottomCenter,     //Ending Alignment
  maxIntensity: 0.5,                        //Maximum opacity of the shadow
  indent: 0.1,                             //The maximum extend of the shadow
                                            //0.1 means 10% of the childs size
  child: SizedBox(                          
    width: 300,
    height: 300),
)
```

![InnerShadow2](https://github.com/user-attachments/assets/0fee0374-9cf6-4641-9cba-b8324b044b51)


## Additional Information
- corner gradients
- stackable (look example_showcase.dart for an example)

![ShadowInverts](https://github.com/user-attachments/assets/8aa06878-79ad-4fa7-ad12-a1f72bcaabba)

