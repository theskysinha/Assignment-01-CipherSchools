import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
Widget StarRatingWidget(){
    return RatingBar(
        initialRating: 4.5,
        ignoreGestures: false,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: 20,
        ratingWidget: RatingWidget(
            full: const Icon(Icons.star, color: Colors.orange),
            half: const Icon(
              Icons.star_half,
              color: Colors.orange,
            ),
            empty: const Icon(
              Icons.star_outline,
              color: Colors.orange,
            )),
        onRatingUpdate: (value) {
          print(value);
        },
    );
}