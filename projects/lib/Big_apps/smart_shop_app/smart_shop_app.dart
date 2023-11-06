import 'package:flutter/material.dart';

class SmartShopApp extends StatelessWidget {
  const SmartShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,

      home: Scaffold(
        appBar: AppBar(
          title: const Text('SmartShopApp'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'SmartShopApp is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
