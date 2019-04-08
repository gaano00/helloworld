import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/ui/detail/ImageDetailPage.dart';

class Routes {
  static final Router _router = new Router();


  static var detailHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return new ImageDetailPage(params["id"][0]);
      });

  static void initRoutes() {
    _router.define("/detail/:id", handler: detailHandler);
  }

  static void navigateTo(context, String route, {TransitionType transition}) {
    _router.navigateTo(context, route, transition: transition);
  }

}