import 'package:flutter/material.dart';
import '../screens/now_playing_screen.dart';

class MiniPlayer extends StatefulWidget {
  final int songIndex;
  MiniPlayer({this.songIndex = 0});

  @override
  _MiniPlayerState createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to Now Playing screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NowPlayingScreen(songIndex: widget.songIndex),
          ),
        );
      },
      child: Container(
        height: 60,
        color: Colors.grey[900],
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Song Name', style: TextStyle(color: Colors.white)),
            IconButton(
              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.white),
              onPressed: () {
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
