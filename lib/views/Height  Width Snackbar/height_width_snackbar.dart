import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HeightWidthSnackbar extends StatelessWidget {
  const HeightWidthSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          height: Get.height * 0.5,
          width: Get.width * 0.5,
        ),
      ),
    );
  }
}
