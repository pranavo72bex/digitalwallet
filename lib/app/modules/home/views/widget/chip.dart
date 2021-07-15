import 'package:digitalwallet/app/const/colors_const.dart';
import 'package:digitalwallet/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

HomeController homeController = Get.put(HomeController());

class Filterchip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Wrap(
        children: List<Widget>.generate(
          3,
          (int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChoiceChip(
                selectedColor: orangecolor,
                padding: EdgeInsets.all(10),
                labelPadding: EdgeInsets.all(8),
                label: Text(
                  homeController.filtertext[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                selected: homeController.initialindex.value == index,
                onSelected: (selected) {
                  if (selected == true) {
                    homeController.changevalue(index);
                  } else {
                    null;
                  }
                },
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
