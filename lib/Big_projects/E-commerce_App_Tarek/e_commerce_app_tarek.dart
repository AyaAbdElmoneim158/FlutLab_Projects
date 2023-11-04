import 'package:flutter/material.dart';

class ECommerceAppTarek extends StatelessWidget {
  const ECommerceAppTarek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      home: const Center(
        child: Text("ECommerceAppTarek"),
      ),
    );
  }
}
