import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../home_screen.dart';
import 'sidebar_container.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
        title: "Recent Post",
        child: Column(
          children: [
            RecentPostCard(
              title: "Our Secret Formula to Online Workshops",
              image: "assets/images/recent_1.png",
              press: () {},
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            RecentPostCard(
              title: "Digital Product Innovations from Warsaw with Love",
              image: "assets/images/recent_2.png",
              press: () {},
            )
          ],
        ));
  }
}
