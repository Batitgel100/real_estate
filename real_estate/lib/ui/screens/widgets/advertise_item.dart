import 'package:flutter/material.dart';
import 'package:real_estate/ui/screens/widgets/advertise.dart';

class AdvertiseItem extends StatelessWidget {
  final Advertise advertise;
  const AdvertiseItem({
    Key? key,
    required this.advertise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(advertise.thumbnail),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
