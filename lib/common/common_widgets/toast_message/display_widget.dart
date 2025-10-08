import 'package:whitelabel/common/common_widgets/toast_message/display.dart';
import 'package:whitelabel/common/common_widgets/toast_message/display_type.dart';
import 'package:whitelabel/common/di/injection.dart';
import 'package:whitelabel/common/extension/text_extension.dart';
import 'package:whitelabel/common/gen/assets.gen.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';




class DisplayWidget extends StatelessWidget {
  const DisplayWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          child,
          Builder(
            builder: (context) {
              _initDisplay(context);
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  _initDisplay(BuildContext context) {
    final display = getIt<Display>();
    display.setOnDisplayListener(
      (message) {
        final Widget icon;
        final Color color;
        switch (message.type) {
          case DisplayType.error:
            icon = Assets.icons.uz.svg(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              height: 28,
              width: 28,
            );
            color = Colors.red;
            break;
          case DisplayType.warning:
            icon = Assets.icons.ru.svg(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              height: 28,
              width: 28,
            );
            color = Colors.orange;
            break;
          case DisplayType.info:
            icon = Assets.icons.uz.svg(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              height: 28,
              width: 28,
            );
            color = Colors.blue;
            break;
          case DisplayType.success:
            icon = Assets.icons.done.svg(
              color: Colors.white,
              height: 28,
              width: 28,
            );
            color = Colors.green;
            break;
        }

        ElegantNotification(
          height: 72,
          background: color,
          description: message.description
              .s(16)
              .w(500)
              .c(Colors.white)
              .copyWith(maxLines: 3, overflow: TextOverflow.ellipsis),
          icon: icon,
          // radius: 8,
          showProgressIndicator: false,
          displayCloseButton: false,
        ).show(context);
      },
    );
  }
}
