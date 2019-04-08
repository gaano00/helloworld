import 'package:flutter/material.dart';
import 'package:helloworld/ui/list/ImageListRow.dart';
import 'package:helloworld/Theme.dart' as Theme;
import 'package:helloworld/model/ImageFileDao.dart';

class ImageList extends StatefulWidget {
  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  var _imageFileList = getList();

  // リストのセット
  static List<Widget> getList() {
    List<Widget> retList = <Widget>[];

    var list = ImageFileDao.getList();
    list.forEach((image) => retList.add(new ImageListRow(image)));

    return retList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 2.5,
      crossAxisSpacing: 2.5,
      padding: const EdgeInsets.all(2.5),
      children: _imageFileList,
    );
  }
}
