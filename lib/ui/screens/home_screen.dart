import 'package:flutter/material.dart';
import '../../data/harmony_mock_data.dart';
import '../widgets/album_card.dart';
import '../widgets/mini_player.dart';
import '../widgets/bottom_nav.dart';
import 'search_screen.dart';
import 'library_screen.dart';
import 'playlist_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeTab(),
    SearchScreen(),
    LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_currentIndex],
          Align(alignment: Alignment.bottomCenter, child: MiniPlayer(songIndex: 0)),
        ],
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: playlists
            .map((p) => AlbumCard(title: p['title']!, image: p['image']!))
            .toList(),
      ),
    );
  }
}
