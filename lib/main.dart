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
        body: const Center(
          child: RandomImages(),
        ),
      ),
    );
  }
}

class RandomImages extends StatelessWidget {
  const RandomImages({super.key});
  // void onPressed = ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: () {}, child: const Text("button")),
    );
  }
}
