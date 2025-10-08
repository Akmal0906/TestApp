import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/common/gen/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NotPurchased extends StatelessWidget {
  const NotPurchased({super.key, required this.refresh});

  final Function refresh;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);
    return RefreshIndicator(
      onRefresh: () async {
        refresh();
      },
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SizedBox(
          height: size.size.height -
              (Scaffold.of(context).appBarMaxHeight ??
                  (size.padding.top + kToolbarHeight) + 80),
          width: size.size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.icons.verify.svg(color: context.colors.primary),
              Padding(
                padding: const EdgeInsets.only(top: 64, bottom: 16),
                child: "home.verify".tr().s(24).w(700),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: "home.subverify".tr().s(16).w(700).a(TextAlign.center).c(context.colors.primary.withOpacity(0.9)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
