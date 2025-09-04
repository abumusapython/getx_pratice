import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class ForgateScreen extends StatelessWidget {
  final String name;
  const ForgateScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Forgate Screen")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Get.back();
              },
              child: Text("Back to Login Screen"),
            ),

            // Text("From Login Page ${name}"),
            Text("Data From Login Page" + name),
          ],
        ),
      ),
    );
  }
}
