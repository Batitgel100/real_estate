import 'package:flutter/material.dart';

class MyAdvertisement extends StatefulWidget {
  const MyAdvertisement({super.key});

  @override
  State<MyAdvertisement> createState() => _MyAdvertisementState();
}

class _MyAdvertisementState extends State<MyAdvertisement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
