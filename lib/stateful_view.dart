import 'package:flutter/material.dart';
import 'package:flutter_web_01_learn/counter_get_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class TextStateful extends StatelessWidget {
  final CounterIncrementController number = Get.put(CounterIncrementController());
  TextStateful({
    super.key, required this.base,
  });

  final String base;

   

  @override
  Widget build(BuildContext context) {
    int numbera = int.parse(base);
    
    return Column(
      children: [
        FittedBox(
            fit: BoxFit.contain,
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Obx(
                  () => Text(
                    'Número de clicks ${number.number.value}',
                    style: const TextStyle(fontSize: 100),
                  ),
                ))),
        ElevatedButton(
          onPressed: number.increment,
          child: const Text('Incrementar'),
        )
      ],
    );
  }
}
