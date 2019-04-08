import 'package:flutter/material.dart';
import 'package:helloworld/model/ImageFileDao.dart';
import 'package:helloworld/model/ImageFile.dart';
import 'package:helloworld/ui/detail/ImageDetailBody.dart';
import 'package:helloworld/ui/detail/DetailAppBar.dart';

class ImageDetailPage extends StatelessWidget {

  final ImageFile _imageFile;

  ImageDetailPage(String id) :
        _imageFile = ImageFileDao.getById(id);



  @override
  Widget build(BuildContext context) {
    /*
    return new Scaffold(
      body: new ImageDetailBody(_imageFile)
    );
    */
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ImageDetailBody(_imageFile),
          new DetailAppBar(),
        ],
      ),
    );
  }
}