import 'package:flutter/material.dart';
import '../widgets/lyrics_card.dart';
import '../../data/harmony_mock_data.dart';

class NowPlayingScreen extends StatelessWidget {
  final int songIndex;
  NowPlayingScreen({required this.songIndex});

  @override
  Widget build(BuildContext context) {
    final song = songs[songIndex];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(song['title']!, style: TextStyle(color: Colors.white, fontSize: 24)),
          Text(song['artist']!, style: TextStyle(color: Colors.grey[400], fontSize: 18)),
          SizedBox(height: 20),
          LyricsCard(lyrics: song['lyrics']!),
        ],
      ),
    );
  }
}
