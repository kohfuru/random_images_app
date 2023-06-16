import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("random_image"),
        ),
        body: Center(
          child: RandomImages(),
        ),
      ),
    );
  }
}

class RandomImages extends StatefulWidget {
  RandomImages({super.key});

  @override
  _RandomImagesState createState() => _RandomImagesState();
}

class _RandomImagesState extends State<RandomImages> {
  var image_url = 'images/nature1.jpg';

  void onPressed() {
    setState(() {
      image_url = 'images/nature2.jpg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(image_url),
        ),
        Container(
          child: ElevatedButton(
            onPressed: onPressed,
            child: const Text('button'),
          ),
        ),
      ],

    );
  }
}
