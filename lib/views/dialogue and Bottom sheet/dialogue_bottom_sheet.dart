import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';

class DialogueBottomSheet extends StatelessWidget {
  const DialogueBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Gext default dialog title",
                  middleText: "This is middle tex",
                  barrierDismissible: true,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("data"), Text("This is dialog, on fire")],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("This is Action button"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("This is Action button"),
                    ),
                  ],
                  cancel: ElevatedButton(
                    onPressed: () {},
                    child: Text("Cancel Button"),
                  ),
                  confirm: ElevatedButton(
                    onPressed: () {},
                    child: Text("Confirm Button"),
                  ),
                );
              },
              child: Text("Dialog"),
            ),
            SizedBox(height: Get.height * 0.06),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  barrierColor: Colors.transparent,
                  Container(
                    height: Get.height * 0.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(""),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                  ),
                );
              },
              child: Text("Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
