import 'package:flutter/material.dart';

import '../../../constants/color.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: isActive ? 22 : 8,
        height: 8,
        decoration: BoxDecoration(
            color: isActive ? AppColors.green : Colors.grey,
            borderRadius: BorderRadius.circular(60)),
      ),
    );
  }
}
