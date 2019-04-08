import 'package:flutter/material.dart';
import 'package:helloworld/Routes.dart';
import 'package:helloworld/ui/home/HomePage.dart';

void main() {
  Routes.initRoutes();
  runApp(new MaterialApp(
    title: "HelloWorld",
    home: new HomePage(),
  ));
}