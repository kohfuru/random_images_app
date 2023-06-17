import 'package:flutter/material.dart';
import 'dart:math' as math;

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
  var image_url = 'images/image0.jpg';

  void onPressed() {
    setState(() {
      int randomNum = math.Random().nextInt(17) + 1;
      image_url = 'images/image$randomNum.jpg';
    });
  }

  void reStart() {
    setState(() {
      image_url = 'images/image0.jpg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 600,
          child: Image.asset(image_url),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: reStart,
              child: const Text('restart'),
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: const Text('button')
            )
          ],
        )

      ],

    );
  }
}
