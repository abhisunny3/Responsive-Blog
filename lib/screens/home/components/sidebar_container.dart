import 'package:flutter/material.dart';
import '../../../constant.dart';

class SidebarContainer extends StatelessWidget {
  const SidebarContainer({
    Key key,
    @required this.title,
    @required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding / 4))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                TextStyle(color: kDarkBlackColor, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          child
        ],
      ),
    );
  }
}
