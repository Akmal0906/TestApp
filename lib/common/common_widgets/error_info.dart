
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';

import '../gen/assets.gen.dart';



class ErrorDataInfo extends StatelessWidget {
  const ErrorDataInfo({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: context.colors.errorBorder.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.error.svg(),
          const SizedBox(width: 10),
          message.s(11).w(500).c(context.colors.errorBorder),
        ],
      ),
    );
  }
}
