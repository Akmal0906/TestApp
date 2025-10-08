import 'package:flutter/material.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';

class CustomRadio extends StatelessWidget {
  const CustomRadio({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 10,
      backgroundColor:
          isActive ? context.colors.primary : context.colors.primary,
      child: CircleAvatar(
        radius: 9,
        backgroundColor: context.colors.white,
        child: CircleAvatar(
          radius: 7,
          backgroundColor:
              isActive ? context.colors.primary : context.colors.white,
        ),
      ),
    );
  }
}
