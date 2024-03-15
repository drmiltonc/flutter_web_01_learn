import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CounterIncrementController extends GetxController {
  var number = 0.obs;

  void increment() {
    number.value++;
  }
}

/* class CounterDecrementController extends GetxController {
  var number = 0.obs;

  void decrement() {
    number.value--;
  }
} */

class CounterDecrementController extends GetxController {

  CounterDecrementController({required String base}) {

    if (int.tryParse(base) != null) {
      number = RxInt(int.parse(base));
    }
  }
  var number = RxInt(0);

  void decrement() {
    number.value--;
  }
}