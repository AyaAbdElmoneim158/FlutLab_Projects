import 'package:flutter/material.dart';
import 'package:projects/Big_apps/smart_shop_app/providers/theme_provider.dart';
import 'package:projects/Big_apps/smart_shop_app/utils/consts/app_asset.dart';
import 'package:projects/Big_apps/smart_shop_app/utils/consts/app_color.dart';
import 'package:projects/Big_apps/smart_shop_app/utils/consts/app_string.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      title: const Text(AppString.appTitle),

      actions: [
        Switch(
            value: themeProvider.getIsDarkTheme,
            onChanged: (val) {
              themeProvider.setDarkTheme(val);
              debugPrint(themeProvider.darkTheme.toString());
            }),
      ],
      // leading: Image.asset(AppAsset.order),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(57);
}
