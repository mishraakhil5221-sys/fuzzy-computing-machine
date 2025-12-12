import 'package:flutter/material.dart';

class LyricsCard extends StatelessWidget {
  final String lyrics;
  LyricsCard({required this.lyrics});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(lyrics, style: TextStyle(color: Colors.white)),
    );
  }
}
