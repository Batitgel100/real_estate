import 'package:flutter/material.dart';
import 'package:real_estate/ui/screens/main%20screens/home_screen.dart';

import '../../../constants/color.dart';

class MyAdvertisement extends StatefulWidget {
  const MyAdvertisement({super.key});

  @override
  State<MyAdvertisement> createState() => _MyAdvertisementState();
}

class _MyAdvertisementState extends State<MyAdvertisement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.green,
          leading: InkWell(
            onTap: () {
              setState(() {
                indexcolor = 0;
              });
            },
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: const Text('Миний зарууд'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Container(
                      height: 110,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
