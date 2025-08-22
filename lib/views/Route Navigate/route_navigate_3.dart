import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_pratice/views/Route%20Navigate/route_navigate.dart';

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
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => RouteNavigate());
              },
              child: Text("data 3"),
            ),
          ],
        ),
      ),
    );
  }
}
