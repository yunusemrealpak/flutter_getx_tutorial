import 'package:get/get.dart';

class HomeController extends GetxController {
  int value = 0;

  increaseNumber() {
    value++;
    update();
  }
}
