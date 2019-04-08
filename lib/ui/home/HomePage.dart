import 'package:flutter/material.dart';
import 'package:helloworld/ui/home/GradientAppBar.dart';
import 'package:helloworld/ui/list/ImageList.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("image list")
      ),
      body: new ImageList()
    );
  }
}