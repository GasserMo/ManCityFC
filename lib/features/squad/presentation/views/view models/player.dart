


import 'package:flutter/material.dart';

class Player {
  final String number;
  final String name;
  final AssetImage image;
  final String position;
  final String dateOfBirth;
  final int height;
  final AssetImage nationality;
   bool isFavorite;
  Player({
    this.isFavorite=false,

    required this.position,
    required this.dateOfBirth,
    required this.height,
    required this.nationality,
    required this.number,
    required this.name,
    required this.image,
  });
}
 



