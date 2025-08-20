import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

class RouteNavigate3 extends StatelessWidget {
  const RouteNavigate3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [ElevatedButton(onPressed: () {}, child: Text("data 3"))],
        ),
      ),
    );
  }
}
