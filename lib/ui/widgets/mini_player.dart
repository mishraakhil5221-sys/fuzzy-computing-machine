import 'package:flutter/material.dart';
import '../screens/now_playing_screen.dart';
import '../../theme/colors.dart';
import '../../theme/fonts.dart';

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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NowPlayingScreen(songIndex: widget.songIndex)),
        );
      },
      child: Container(
        height: 60,
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.glass,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: AppColors.cardShadow, blurRadius: 8)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Song Name', style: AppFonts.subtitle(16, Colors.white)),
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
}              onPressed: () {
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
