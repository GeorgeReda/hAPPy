import 'package:birthday_1/reusables/tile.dart';
import 'package:flutter/material.dart';

class Constants {
  ThemeData theme = ThemeData(
      primaryColor: Colors.blueAccent,
      textTheme: TextTheme(
          bodyText1: TextStyle(
        color: Colors.black87,
        fontSize: 18,
      )));
  final listTiles = [
    {"pic": "images/pic1.jpeg"},
    {"pic": "images/pic2.jpeg"},
    {"pic": "images/pic3.jpeg"},
    {"pic": "images/pic4.jpeg"},
    {"pic": "images/pic1.jpeg"},
    {"pic": "images/pic2.jpeg"},
    {"pic": "images/pic3.jpeg"},
    {"pic": "images/pic4.jpeg"},
  ];

  List<ReusableTile> tiles = [
    ReusableTile(
      image: 'images/pic1.jpeg',
      title: 'tile1',
    ),
    ReusableTile(
      image: 'images/pic2.jpeg',
      title: 'tile2',
    ),
    ReusableTile(
      image: 'images/pic3.jpeg',
      title: 'tile3',
    ),
    ReusableTile(
      image: 'images/pic4.jpeg',
      title: 'tile4',
    ),
    ReusableTile(
      image: 'images/pic1.jpeg',
      title: 'tile5',
    ),
    ReusableTile(
      image: 'images/pic2.jpeg',
      title: 'tile6',
    ),
    ReusableTile(
      image: 'images/pic3.jpeg',
      title: 'tile7',
    ),
    ReusableTile(
      image: 'images/pic4.jpeg',
      title: 'tile8',
    ),
    ReusableTile(
      image: 'images/pic1.jpeg',
      title: 'tile9',
    ),
    ReusableTile(
      image: 'images/pic2.jpeg',
      title: 'tile10',
    ),
  ];
}
