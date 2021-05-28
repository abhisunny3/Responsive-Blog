import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/constant.dart';
import 'package:responsive_blog/controllers/MenuCoontroller.dart';
import 'package:responsive_blog/screens/home/home_screen.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            )
          ],
        ),
      ),
    );
  }
}
