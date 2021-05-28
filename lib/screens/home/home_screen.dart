import 'package:flutter/material.dart';
import 'package:responsive_blog/constant.dart';
import 'package:responsive_blog/models/Blog.dart';
import 'package:responsive_blog/responsive.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
                blogPosts.length,
                (index) => BlogPostCard(
                      blog: blogPosts[index],
                    )),
          ),
        ),
        if (!Responsive.isMobile(context))
          SizedBox(
            width: kDefaultPadding,
          ),
        if (!Responsive.isMobile(context))
          Expanded(
              child: Column(
            children: [
              Search(),
              SizedBox(
                height: kDefaultPadding,
              ),
              Categories(),
              SizedBox(
                height: kDefaultPadding,
              ),
              RecentPosts()
            ],
          ))
      ],
    );
  }
}

class RecentPostCard extends StatelessWidget {
  const RecentPostCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String image, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(flex: 2, child: Image.asset(image)),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
                flex: 5,
                child: Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                      fontFamily: "Raleway",
                      color: kDarkBlackColor,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ))
          ],
        ),
      ),
    );
  }
}
