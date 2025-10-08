import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';

//import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AuthErrorBox extends StatelessWidget {
  const AuthErrorBox({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 32,
       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.1),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: const Color(0xffFFE8E8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.cancel_sharp,
            size: 16,
            color: context.colors.errorBorder,
          ),
          const SizedBox(width: 10),
          Expanded(child: message.s(11).w(500).c(context.colors.errorBorder).copyWith(maxLines: 2,overflow: TextOverflow.clip)),
        ],
      ),
    );
  }
}
