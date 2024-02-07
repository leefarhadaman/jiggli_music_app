

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiggli_music_app/view/main_tab_view/main_tab_view.dart';

class SplashViewMode extends GetxController {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  void loadView() async {
    await Future.delayed(const Duration(seconds: 3) );
    Get.to( () => const  MainTabView());
  }

  void openDrawer(){
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer(){
    scaffoldKey.currentState?.closeDrawer();
  }
}