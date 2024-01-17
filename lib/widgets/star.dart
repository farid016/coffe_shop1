import 'package:coffe_shop/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Star extends StatelessWidget {
  const Star({Key? key, this.isActive = true}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.only(right: 5),
      child: SvgPicture.asset(
        "assets/icon_star.svg",
        color: isActive ? kYellowColor : kGreyColor,
      ),
    );
  }
}
