import 'package:helloworld/model/ImageFile.dart';
import 'dart:math';

class ImageFileDao {
  static final List<ImageFile> imageFiles = initImageFileList();

  // 初期化
  static List<ImageFile> initImageFileList() {
    List<ImageFile> list = <ImageFile>[];
    List<String> imageList = <String>[
      "assets/img/earth.png",
      "assets/img/mars.png",
      "assets/img/mercury.png",
      "assets/img/moon.png",
      "assets/img/neptune.png",
    ];

    Random rand = new Random();
    for (int i = 0; i < 50; i++) {
      int imageId = rand.nextInt(imageList.length);
      list.add(
        new ImageFile(
          id : i.toString(),
          name : imageList[imageId],
          image: imageList[imageId]
        )
      );
    }
    return list;
  }

  // test
  static ImageFile getById(id) {
    return imageFiles.where((p) => p.id == id).first;
  }

  // test
  static List<ImageFile> getList() {
    return imageFiles;
  }
}