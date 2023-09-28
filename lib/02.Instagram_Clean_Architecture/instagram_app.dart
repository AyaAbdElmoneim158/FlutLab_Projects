import 'package:flutter/material.dart';
import 'package:flutter_projects/02.Instagram_Clean_Architecture/features/presentation/screens/credential/sign_in_screen.dart';

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Instagram App',
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
} // repository
