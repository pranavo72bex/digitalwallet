import 'package:get/get.dart';

class HomeController extends GetxController {
  var initialindex = 0.obs;
  List<String> filtertext = [
    '3 months',
    '6 months',
    '9 months',
  ];

  void changevalue(value) {
    initialindex.value = value;
  }
}
