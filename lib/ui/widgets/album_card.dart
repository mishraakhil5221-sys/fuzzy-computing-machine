import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../theme/fonts.dart';

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
        boxShadow: [
          BoxShadow(color: AppColors.cardShadow, blurRadius: 8, offset: Offset(0, 4))
        ],
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.glass, // glass overlay
        ),
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(8),
        child: Text(title, style: AppFonts.title(16)),
      ),
    );
  }
}
