import 'package:flutter/material.dart';
import 'package:flutter_projects/06.Ammer_projects/03.game_app/game_app.dart';

class AmmerProjects extends StatelessWidget {
  const AmmerProjects({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ammer Projects',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Run app"),
          ),
        )
        //GameApp(),
        );
  }
} // repository
