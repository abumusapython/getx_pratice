import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.to(() => LgoinScreen());
                Get.toNamed('/login_screen');
              },
              child: Text("Go to Login Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
