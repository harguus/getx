import 'package:get/get.dart';

class ControllerGetx extends GetxController {
  var counter = 0.obs;

  void increment() => counter.value++;
}
