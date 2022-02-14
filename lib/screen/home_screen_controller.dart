import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final rightText = 0.obs;
  final leftText = 0.obs;

  final firstSet = '0'.obs;
  final secondSet = '0'.obs;
  final thirdSet = '0'.obs;
  final fourthSet = '0'.obs;
  final fifthSet = '0'.obs;

  void onTapPlus({required bool isPlayer}) {
    if (rightText.value == 10 && leftText.value == 10) {
      addDeuce();
    } else {
      addScore(isPlayer: isPlayer);
    }
  }

  void addDeuce() {}

  void addScore({required bool isPlayer}) {
    if (isPlayer) {
      if (rightText >= 11) {
      } else {
        rightText.value++;
      }
    } else {
      if (leftText >= 11) {
      } else {
        leftText.value++;
      }
    }
  }

  void checkWin() {
    //TODO 普通に勝った場合

    //TODO デュースの場合
  }

  void changeCourt() {

  }

  void resetGame() {

  }

  void resetCount() {

  }
}
