import 'package:flutter/material.dart';
import '../../data/harmony_mock_data.dart';
import '../widgets/album_card.dart';
import '../widgets/mini_player.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: playlists.map((p) => AlbumCard(title: p['title']!, image: p['image']!)).toList(),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: MiniPlayer(songIndex: 0)),
        ],
      ),
    );
  }
}
