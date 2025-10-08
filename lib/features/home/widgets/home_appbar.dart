import 'package:flutter/material.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';

import '../../../common/gen/assets.gen.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({
    super.key,
    required this.title,
    required this.isSynchronized,
     this.unreadNotificationCount=0,
  });

  final Widget title;
  final bool isSynchronized;
  final int unreadNotificationCount;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        color: context.colors.primary,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(alignment: Alignment.bottomCenter, child: title),
            ),
            isSynchronized
                ? Positioned(
                  bottom: 0,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 14,
                    child: (unreadNotificationCount > 0
                            ? Assets.icons.notificationWithUnread
                            : Assets.icons.notificationZero)
                        .svg(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                  ),
                )
                : Center(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight * 1.3);
}
