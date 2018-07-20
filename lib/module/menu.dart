import 'package:flutter/material.dart';

class Menu{
  String title;
  IconData icon;
  String image;
  List<String> items;
  List<String> pages;
  BuildContext context;

  Menu({this.title, this.icon, this.image, this.items,this.pages, this.context});

}