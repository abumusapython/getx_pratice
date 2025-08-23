import 'package:flutter/material.dart';
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgateScreen()),
                );
              },
              child: Text("Go to Forgate Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
