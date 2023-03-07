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

<div>
  <h2>Shimmer effect</h2>
  <p>The Shimmer effect package provides a customizable widget that adds a shimmering effect to any Flutter widget. This can be useful for indicating that a widget is currently loading or animating, and can be applied to buttons, text fields, images, and more.</p>
  <h3>Features</h3>
  <ul>
    <li>Easily add shimmering effect to any Flutter widget</li>
    <li>Customize the duration, color, and secondary color of the shimmer effect</li>
    <li>Support for multiple directions of shimmering effect</li>
  </ul>
  <h3>Getting Started</h3>
  <p>To use the Shimmer effect package, you'll need to add it to your pubspec.yaml file and import it into your Dart code:</p>
  <pre><code>dependencies:
    shimmer_effect: ^1.0.0
import 'package:shimmer_effect/shimmer_effect.dart';</code></pre>
  <h3>Usage</h3>
  <p>To add a shimmer effect to a Flutter widget, simply wrap it with the ShimmerEffect widget and specify the desired properties:</p>
  <pre><code>ShimmerEffect(
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
            'Shimmer effect',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    ),
  ),</code></pre>
  <p>This code applies a shimmer effect to a container with a grey background and rounded corners, containing the text "Hello, world!" The shimmer effect will last for 2 seconds and use white and grey colors.</p>
  <p>For more examples, see the example directory in the Shimmer effect package on GitHub.</p>
</div>