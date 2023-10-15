import 'package:flutter/material.dart';
import 'package:flutter_projects/06.Ammer_projects/04.music_app/music_model.dart';
import 'package:flutter_projects/06.Ammer_projects/04.music_app/widgets/music_abb_bar.dart';
import 'package:flutter_projects/06.Ammer_projects/04.music_app/widgets/music_card.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MusicAppBar(),
      body: buildBody(),
    );
  }

  ListView buildBody() {
    return ListView.separated(
      itemCount: audios.length,
      itemBuilder: (context, index) => MusicCard(music: audios[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
