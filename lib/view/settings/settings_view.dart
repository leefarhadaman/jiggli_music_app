import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common_widget/icon_text_row.dart';
import '../../view_model/splash_view_model.dart';

import '../../common/color_extension.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.find<SplashViewMode>().openDrawer();
          },
          icon: Image.asset(
            "asset/img/menu.png",
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Settings",
          style: TextStyle(
              color: TColor.primaryText80,
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          IconTextRow(
            title: "Display",
            icon: "asset/img/s_display.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Audio",
            icon: "asset/img/s_audio.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Headset",
            icon: "asset/img/s_headset.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Lock Screen",
            icon: "asset/img/s_lock_screen.png",
            onTap: () {},
          ),
          IconTextRow(
            title: "Advanced",
            icon: "asset/img/s_menu.png",
            onTap: () {},
          ),

          IconTextRow(
            title: "Other",
            icon: "asset/img/s_other.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
