import 'package:flutter/material.dart';
import 'package:flutter_web_01_learn/counter_get_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class TextProvider extends StatelessWidget {
  const TextProvider({
    super.key, required this.base,
  });

  final String base;

  @override
  Widget build(BuildContext context) {
  final numberToDecrement = Get.put(CounterDecrementController(base: base));
    return Column(
      children: [
        FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Obx(
                () => Text(
                  'Número de clicks ${numberToDecrement.number.value}',
                  style: const TextStyle(fontSize: 100),
                ),
              ),
            )),
        ElevatedButton(
          onPressed: numberToDecrement.decrement,
          child: const Text('Decrementar'),
        ),
      ],
    );
  }
}
