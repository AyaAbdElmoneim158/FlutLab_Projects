import 'package:flutter/material.dart';
import 'package:projects/Big_apps/smart_shop_app/providers/main_provider.dart';
import 'package:projects/Big_apps/smart_shop_app/providers/theme_provider.dart';
import 'package:projects/Big_apps/smart_shop_app/screens/main_screen.dart';
import 'package:projects/Big_apps/smart_shop_app/utils/consts/app_theme.dart';
import 'package:provider/provider.dart';

class SmartShopApp extends StatelessWidget {
  const SmartShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder:(context, themeProvider, child) =>  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeData(
            isDarkTheme: themeProvider.darkTheme,
            context: context,
          ),
          home: const MainScreen(),
        ),
      ),
    );
  }
}
