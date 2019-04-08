import 'package:flutter/material.dart';
import 'package:helloworld/Theme.dart' as Theme;
import 'package:helloworld/model/ImageFile.dart';

class ImageDetailBody extends StatelessWidget {
  final ImageFile _imageFile;

  ImageDetailBody(this._imageFile);


  @override
  Widget build(BuildContext context) {
    /*
    return new Image(
      image: new AssetImage(_imageFile.image),
    );
    */
    return new Stack(
        children: <Widget>[
          new Container(
            color: Theme.Colors.appBarDetailBackground,
            child: new Center(
              child: new Hero(
                tag: 'image-icon-${_imageFile.id}',
                child:
                new Image(
                  image: new AssetImage(_imageFile.image),
                  height: Theme.Dimens.planetHeight,
                  width: Theme.Dimens.planetWidth,
                ),
              ),

            ),
          ),
        ]
    );
  }
}