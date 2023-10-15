import 'package:flutter/material.dart';
import 'package:flutter_projects/06.Ammer_projects/04.music_app/music_model.dart';
import 'package:audioplayers/audio_cache.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    super.key,
    required this.music,
  });
  final MusicModel music;

  static AudioCache player = AudioCache();
  void playAudio(String audioPath) {
    player.play(audioPath);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => playAudio(music.musicAudio),
        child: Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(Icons.music_note, color: music.musicColor),
                Text(
                  music.musicName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: music.musicColor),
                ),
              ],
            )),
      ),
    );
  }
}
