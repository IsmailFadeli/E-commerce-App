import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/home/food_page_body.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPage();
}

class _MainFoodPage extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Algeria",
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Algiers",
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded),
                      ],
                    )
                    //https://www.youtube.com/watch?v=7dAt-JMSCVQ continue watching at 38:00
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        FoodPageBody(),
      ],
    ));
  }
}
