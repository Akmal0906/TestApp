
import 'package:flutter/material.dart';
import 'package:whitelabel/common/common_widgets/scale_animation.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';

import '../gen/assets.gen.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.onTap,
    this.shadow,
    this.background,
    this.radius = 8.0,
    this.borderColor,
    this.titleColor,
    this.preficIcon,
    this.title = "",
    this.titleWeight = 500,
    this.titleSize = 16,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.height = 48,
    this.width = double.maxFinite,
    this.loading = false,
    this.disable = false,
  });
  final SvgGenImage? preficIcon;
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double height;
  final double width;
  final Color? background;
  final Color? borderColor;
  final Color? titleColor;
  final double radius;
  final String title;
  final double titleSize;
  final int titleWeight;
  final bool loading;
  final bool disable;
  final BoxShadow? shadow;

  @override
  Widget build(BuildContext context) {
    final Color backColor = disable
        ? (background ?? context.colors.white).withOpacity(0.5)
        : background ?? context.colors.white;
    return WScaleAnimation(
      child: Container(
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          boxShadow: [shadow ?? const BoxShadow()],
          color: backColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: borderColor ?? context.colors.border),
        ),
        child: preficIcon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  preficIcon!.svg(color: context.colors.primary),
                  const SizedBox(width: 4),
                  loading
                      ? CircularProgressIndicator(color: context.colors.white)
                      : title
                          .s(titleSize)
                          .w(titleWeight)
                          .c(titleColor ?? context.colors.white),
                ],
              )
            : Center(
                child: loading
                    ? CircularProgressIndicator(color: context.colors.white)
                    : title
                        .s(titleSize)
                        .w(titleWeight)
                        .c(titleColor ?? context.colors.white),
              ),
      ),
      onTap: () => !disable ? onTap() : null,
    );
  }
}
