import 'package:get/get.dart';

import 'package:digitalwallet/app/modules/bottomnavigation/bindings/bottomnavigation_binding.dart';
import 'package:digitalwallet/app/modules/bottomnavigation/views/bottomnavigation_view.dart';
import 'package:digitalwallet/app/modules/chat/bindings/chat_binding.dart';
import 'package:digitalwallet/app/modules/chat/views/chat_view.dart';
import 'package:digitalwallet/app/modules/details/bindings/details_binding.dart';
import 'package:digitalwallet/app/modules/details/views/details_view.dart';
import 'package:digitalwallet/app/modules/home/bindings/home_binding.dart';
import 'package:digitalwallet/app/modules/home/views/home_view.dart';
import 'package:digitalwallet/app/modules/info/bindings/info_binding.dart';
import 'package:digitalwallet/app/modules/info/views/info_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOMNAVIGATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS,
      page: () => DetailsView(),
      binding: DetailsBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVIGATION,
      page: () => BottomnavigationView(),
      binding: BottomnavigationBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.INFO,
      page: () => InfoView(),
      binding: InfoBinding(),
    ),
  ];
}
