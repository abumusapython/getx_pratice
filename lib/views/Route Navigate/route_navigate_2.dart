import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_pratice/views/Route%20Navigate/route_navigate_3.dart';

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

            ElevatedButton(
              onPressed: () {
                Get.to(() => RouteNavigate3(title: "This is page 2"));
              },
              child: Text("Go to 3"),
            ),
          ],
        ),
      ),
    );
  }
}
