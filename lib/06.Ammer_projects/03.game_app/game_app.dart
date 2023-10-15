import 'package:flutter/material.dart';
import 'package:flutter_projects/06.Ammer_projects/03.game_app/widgets/game_app_bar.dart';
import 'package:flutter_projects/06.Ammer_projects/03.game_app/widgets/game_body.dart';

class GameApp extends StatelessWidget {
  const GameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GameAppBar(),
      body: GameBody(),
    );
  }
}
