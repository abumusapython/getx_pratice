import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_pratice/views/Route%20Navigate/route_navigate_2.dart';
import 'package:getx_pratice/views/Route%20Navigate/route_navigate_3.dart';

class RouteNavigate extends StatelessWidget {
  const RouteNavigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => RouteNavigate2());
              },
              child: Text("Got to 2"),
            ),
            SizedBox(height: Get.height * 0.03),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => RouteNavigate3());
              },
              child: Text("Go to Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}
