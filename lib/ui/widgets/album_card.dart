import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class AlbumCard extends StatelessWidget {
  final String title;
  final String image;
  AlbumCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.glass,
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text(title, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
