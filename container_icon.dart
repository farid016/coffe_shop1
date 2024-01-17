import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      child: SvgPicture.asset(imageUrl),
    );
  }
}