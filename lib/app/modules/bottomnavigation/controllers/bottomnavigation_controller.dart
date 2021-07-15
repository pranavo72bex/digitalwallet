import 'package:digitalwallet/app/modules/chat/views/chat_view.dart';
import 'package:digitalwallet/app/modules/details/views/details_view.dart';
import 'package:digitalwallet/app/modules/home/views/home_view.dart';
import 'package:digitalwallet/app/modules/info/views/info_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomnavigationController extends GetxController {
  var initialState = 0.obs;
  List<Widget> pages = [
    HomeView(),
    DetailsView(),
    InfoView(),
    ChatView(),
  ];
  void changeState(value) {
    initialState.value = value;
  }
}
