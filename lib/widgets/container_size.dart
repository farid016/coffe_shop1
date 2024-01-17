import 'package:coffe_shop/constanst.dart';
import 'package:flutter/material.dart';

class ContainerSize extends StatelessWidget {
  const ContainerSize({Key? key, this.isActive = false, required this.name})
      : super(key: key);

  final bool isActive;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      decoration: BoxDecoration(
        color: isActive ? kDarkColor : kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1, color: kDarkColor),
      ),
      child: Center(
        child: Text(
          name,
          style: isActive
              ? whiteTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                )
              : titleTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
        ),
      ),
    );
  }
}