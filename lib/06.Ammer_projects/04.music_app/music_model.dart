import 'package:flutter/material.dart';

class MusicModel {
  final String musicAudio;
  final String musicName;
  final Color musicColor;

  MusicModel({
    required this.musicAudio,
    required this.musicName,
    required this.musicColor,
  });
}

List<MusicModel> audios = [
  MusicModel(
    musicAudio: "assets/musicAudio/music-1.mp3",
    musicName: 'Samsung Galaxy',
    musicColor: Colors.red,
  ),
  MusicModel(
    musicAudio: "assets/musicAudio/music-2.mp3",
    musicName: 'Samsung Note',
    musicColor: Colors.green,
  ),
  MusicModel(
    musicAudio: "assets/musicAudio/music-3.mp3",
    musicName: 'Nokia',
    musicColor: Colors.black,
  ),
  MusicModel(
    musicAudio: "assets/musicAudio/music-4.mp3",
    musicName: 'iPhone 11',
    musicColor: Colors.orange,
  ),
  MusicModel(
    musicAudio: "assets/musicAudio/music-5.mp3",
    musicName: 'Whatsapp',
    musicColor: Colors.blue,
  ),
  MusicModel(
    musicAudio: "assets/musicAudio/music-2.mp3",
    musicName: 'Samsung S7',
    musicColor: Colors.purple,
  ),
  MusicModel(
    musicAudio: "assets/musicAudio/music-2.mp3",
    musicName: 'iPhone 6',
    musicColor: Colors.black,
  ),
];
