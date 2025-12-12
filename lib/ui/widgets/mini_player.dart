import 'package:flutter/material.dart';

class MiniPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Song Name', style: TextStyle(color: Colors.white)),
          IconButton(
            icon: Icon(Icons.play_arrow, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
