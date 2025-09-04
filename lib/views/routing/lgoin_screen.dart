import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:getx_pratice/views/routing/forgate_screen.dart';

class LgoinScreen extends StatelessWidget {
  const LgoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ForgateScreen()),
                // );
                Get.toNamed("/home_screen");
              },
              child: Text("Go to Home Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
