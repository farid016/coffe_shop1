import 'package:coffe_shop/constanst.dart';
import 'package:coffe_shop/widgets/container_icon.dart';
import 'package:coffe_shop/widgets/container_size.dart';
import 'package:coffe_shop/widgets/star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget topBar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ContainerIcon(imageUrl: "assets/icon_back.svg"),
          ),
          ContainerIcon(imageUrl: "assets/icon_menu.svg"),
        ],
      );
    }

    Widget detailsImage() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 192,
              height: 243,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images_starbuck.jpg"),
                ),
              ),
            ),
            Text(
              "Caramel Macchiato",
              style: titleTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We cannot guarantee that any unpackaged products served in our stores are allergen-free",
              textAlign: TextAlign.center,
              style: subtitleTextStyle.copyWith(fontSize: 12),
            ),
          ],
        ),
      );
    }

    Widget sizeOption() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContainerSize(name: "S", isActive: true),
            ContainerSize(name: "M"),
            ContainerSize(name: "L"),
          ],
        ),
      );
    }

    Widget contentCombo() {
      return Container(
        width: double.infinity,
        height: 80,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images_food.jpg"),
                ),
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CROISSANT",
                  style: blackTextStyle.copyWith(fontWeight: semiBold),
                ),
                Row(
                  children: [
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Star(isActive: false),
                    Text(
                      "4.0",
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              width: 24,
              height: 24,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kBackgroundColor,
              ),
              child: SvgPicture.asset("assets/icon_plus.svg"),
            ),
          ],
        ),
      );
    }

    Widget bottomButton() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Note: Bag Button
          Container(
            width: 67,
            height: 67,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 57,
                    height: 57,
                    padding: EdgeInsets.all(17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: kDarkColor),
                    ),
                    child: SvgPicture.asset("assets/icon_bag.svg"),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 29,
                    height: 29,
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: kDarkColor),
                    ),
                    child: Center(
                      child: Text(
                        "3",
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Note: Button
          Container(
            width: 200,
            height: 55,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kDarkColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "ADD TO BAG",
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  width: 1,
                  height: 27,
                  color: Color(0xFFBFBFBF),
                ),
                Text(
                  "\$ 5.99",
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note: Section topbar
              topBar(),
              Expanded(
                child: ListView(
                  children: [
                    // Note: Section Details Image
                    detailsImage(),
                    // Note: Section size option
                    SizedBox(height: 30),
                    Text(
                      "SIZE",
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 12,
                      ),
                    ),
                    sizeOption(),
                    // Note: Section Combo
                    SizedBox(height: 30),
                    Text(
                      "COMBO",
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(height: 12),
                    contentCombo(),

                    // Note: Section Button
                    SizedBox(height: 55),
                    bottomButton(),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}