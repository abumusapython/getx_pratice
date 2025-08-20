import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RouteNavigate2 extends StatelessWidget {
  const RouteNavigate2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Go to 1"),
            ),
          ],
        ),
      ),
    );
  }
}
