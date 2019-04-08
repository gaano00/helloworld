
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/Routes.dart';
import 'package:helloworld/Theme.dart';
import 'package:helloworld/model/ImageFile.dart';

class ImageListRow extends StatelessWidget {

  final ImageFile imageFile;
  ImageListRow(this.imageFile);

  @override
  Widget build(BuildContext context) {
    final thumbnail = new Container(
      alignment: new FractionalOffset(0.0, 0.5),
      margin: const EdgeInsets.only(left: 24.0),
      child: new Hero(
        tag: 'image-${imageFile.id}',
        child:
        new FlatButton(
          onPressed: () => _navigateTo(context, imageFile.id),
          child: new Image(
            image: new AssetImage(imageFile.image),
          ),
        ),
      ),
    );

    return thumbnail;
  }

  _navigateTo(context, String id) {
    Routes.navigateTo(
        context,
        '/detail/${imageFile.id}',
        transition: TransitionType.fadeIn
    );
  }
}
