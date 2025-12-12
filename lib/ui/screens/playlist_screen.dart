import 'package:flutter/material.dart';
import '../../data/harmony_mock_data.dart';
import '../widgets/album_card.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Playlists"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: playlists
              .map((p) => AlbumCard(title: p['title']!, image: p['image']!))
              .toList(),
        ),
      ),
    );
  }
}
