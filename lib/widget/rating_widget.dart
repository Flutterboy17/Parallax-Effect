import 'package:flutter/material.dart';

import '../data/images_data.dart';
import '../utils/app_colors.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.currentItem,
  });

  final DataModel currentItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Rating: ",
          style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0),
        ),
        Row(
          children: List.generate(
            4,
            (index) => Icon(
              Icons.star,
              color: ratingColor,
              size: 24,
            ),
          ),
        ),
        SizedBox(width: 4),
        Text(
          "(${currentItem.rating})",
          style: TextStyle(
            fontSize: 18,
            color: ratingColor
          ),
        ),
      ],
    );
  }
}
