import 'package:flutter/material.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/Route/router.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/Route/routes.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/theme.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/views/landing_page.dart';

class EcommerceAppTarek extends StatelessWidget {
  const EcommerceAppTarek({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ammer Projects',
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),

      //!Theme.......................................
      theme: CustomTheme.lightTheme(),
      darkTheme: CustomTheme.darkTheme(),
      themeMode: ThemeMode.light,

      //!Route.......................................
      onGenerateRoute: onGenerateRoute,
      initialRoute: Routes.authRoute,
    );
  }
} // repository
