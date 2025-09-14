import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:getx_pratice/views/counter%20app/counter_controller.dart';

class CounterHome extends StatelessWidget {
  CounterHome({super.key});

  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(counterController.num.value.toString())),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterController.sub();
                },
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  counterController.adition();
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
