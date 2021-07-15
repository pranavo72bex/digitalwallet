import 'package:digitalwallet/app/const/colors_const.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottomnavigation_controller.dart';

// ignore: must_be_immutable
class BottomnavigationView extends GetView<BottomnavigationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          height: 55,
          width: double.infinity,
          child: BottomNavigationBar(
            backgroundColor: backgroundcolor,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            iconSize: 25,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.initialState.value,
            items: [
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.home_outlined,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.wallet_giftcard_outlined,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.info_outline,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.messenger_outline,
                  )),
            ],
            onTap: (index) {
              controller.changeState(index);
            },
          ),
        ),
      ),
      body: Obx(
        () => controller.pages[controller.initialState.value],
      ),
    );
  }
}
