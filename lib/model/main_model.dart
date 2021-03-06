import 'package:flutter/material.dart';
import 'package:tryout/builder/pattern.dart';

class MainModel {
  //final String mainModelName = "assets/models/geo.json";

  double screenHeight = 812.0;
  double screenWidth = 375.0;
  double appBarHeight;

  double fontScale;
  double sizeScale;
  double scaleHeight;
  double scaleWidth;
  double size10;
  double size20;

  AppActions appActions;

  BuildContext context;
  Map<String, dynamic> stateData = {};
  Map<String, dynamic> get map => stateData["map"];

  List<List<dynamic>> stack = [];

  int _count = 0;

  int get count => _count;

  addCount() {
    _count++;
  }

  Future<String> getJson(BuildContext context, String mainModelName) {
    return DefaultAssetBundle.of(context).loadString(mainModelName);
  }

  init() {
    stateData.addAll({"cache": {}, "logical": {}, "user": {}});
    //appActions = AgentActions();
    size10 = 10.0 * sizeScale;
    size20 = 20.0 * sizeScale;
  }
}
