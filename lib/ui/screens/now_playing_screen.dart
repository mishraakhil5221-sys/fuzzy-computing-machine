import 'package:flutter/material.dart';
import '../widgets/lyrics_card.dart';
import '../../data/harmony_mock_data.dart';

class NowPlayingScreen extends StatefulWidget {
  final int songIndex;
  NowPlayingScreen({required this.songIndex});

  @override
  _NowPlayingScreenState createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  bool isPlaying = true;

  @override
  Widget build(BuildContext context) {
    final song = songs[widget.songIndex];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/400?${widget.songIndex}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  color: Colors.black26, // glass overlay
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SafeArea(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                SizedBox(height: 16),
                Text(song['title']!, style: TextStyle(color: Colors.white, fontSize: 24)),
                Text(song['artist']!, style: TextStyle(color: Colors.grey[400], fontSize: 18)),
                SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    child: LyricsCard(lyrics: song['lyrics']!),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.skip_previous, color: Colors.white, size: 36),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                          color: Colors.white, size: 60),
                      onPressed: () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_next, color: Colors.white, size: 36),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
