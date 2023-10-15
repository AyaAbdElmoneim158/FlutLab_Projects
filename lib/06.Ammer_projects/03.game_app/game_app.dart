import 'package:flutter/material.dart';
import 'package:flutter_projects/06.Ammer_projects/03.game_app/widgets/game_app_bar.dart';
import 'package:flutter_projects/06.Ammer_projects/03.game_app/widgets/game_body.dart';

class GameApp extends StatefulWidget {
  const GameApp({Key? key}) : super(key: key);

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GameAppBar(),
      body: GameBody(),
    );
  }
}
