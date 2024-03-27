import 'package:flutter/material.dart';
import 'package:musicly_app/data/model/songs.dart';

class SongCard extends StatelessWidget {
  final Songs song;

  const SongCard({
    Key? key,
    required this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
    );
  }
}
