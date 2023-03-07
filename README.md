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

Shimmer Animation

The Shimmer animation package provides a customizable widget that adds a shimmering animation to any Flutter widget. This can be useful for indicating that a widget is currently loading or animating, and can be applied to buttons, text fields, images, and more.

Features

Easily add shimmering animation to any Flutter widget
Customize the duration, color, and secondary color of the shimmer animation
Support for multiple directions of shimmering animation
Getting Started

To use the Shimmer animation package, you'll need to add it to your pubspec.yaml file and import it into your Dart code:

dependencies:
  shimmeranimation: ^1.0.0


import 'package:shimmeranimation/shimmeranimation.dart';

Usage

To add a shimmer animation to a Flutter widget, simply wrap it with the Shimmeranimation widget and specify the desired properties:

ShimmerAnimation(
            duration: const Duration(seconds: 1),
            color: const Color.fromARGB(141, 240, 235, 235),
            secondaryColor: Colors.white,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.favorite,
                    size: 72,
                    color: Colors.red,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Shimmer Animation',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ),

This code applies a shimmer animation to a container with a grey background and rounded corners, containing the text "Hello, world!" The shimmer animation will last for 2 seconds and use white and grey colors.

For more examples, see the example directory in the Shimmer animation package on GitHub.