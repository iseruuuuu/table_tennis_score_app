import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:table_tennis_score_app/screen/item/set_item.dart';
import 'package:table_tennis_score_app/screen/item/text_item.dart';

import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController(), tag: '');
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => SetItem(
              firstSet: controller.firstSet.value,
              secondSet: controller.secondSet.value,
              thirdSet: controller.thirdSet.value,
              fourthSet: controller.fourthSet.value,
              fifthSet: controller.fifthSet.value,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => controller.onTapPlus(isPlayer: true),
                child: Obx(
                  () => TextItem(
                    text: '${controller.rightText.value}',
                    color: Colors.red,
                  ),
                ),
              ),
              const TextItem(
                text: '-',
                color: Colors.transparent,
              ),
              GestureDetector(
                onTap: () => controller.onTapPlus(isPlayer: false),
                child: Obx(
                  () => TextItem(
                    text: '${controller.leftText.value}',
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('reset game')),
              ElevatedButton(onPressed: () {}, child: Text('change court')),
              ElevatedButton(onPressed: () {}, child: Text('reset count')),
            ],
          ),
        ],
      ),
    );
  }
}
