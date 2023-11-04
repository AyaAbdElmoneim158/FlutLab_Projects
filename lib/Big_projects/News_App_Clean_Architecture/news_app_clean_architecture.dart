import 'package:flutter/material.dart';

class NewsAppCleanArchitecture extends StatelessWidget {
  const NewsAppCleanArchitecture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      home: const Center(
        child: Text("NewsAppCleanArchitecture"),
      ),
    );
  }
}
