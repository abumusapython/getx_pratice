import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx_pratice/views/app%20them/app_them_controller.dart';
import 'package:getx_pratice/views/image%20picker/image_picker_controller.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerHome extends StatelessWidget {
  ImagePickerHome({super.key});

  final ImagePickerController imagePickerController = Get.put(
    ImagePickerController(),
  );

  final AppThemController appThemController = Get.find<AppThemController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        centerTitle: true,
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                appThemController.isDarkMode.value
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
              onPressed: () {
                appThemController.toggleTheme();
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Obx(
              () => Container(
                alignment: Alignment.center,
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: appThemController.isDarkMode.value
                      ? Colors.white
                      : Colors.green,
                  border: Border.all(
                    width: 5,
                    color: appThemController.isDarkMode.value
                        ? Colors.deepOrange
                        : Colors.black,
                  ),
                ),
                child: imagePickerController.imagePath.isEmpty
                    ? Obx(
                        () => Text(
                          "Select Image",
                          style: TextStyle(
                            color: appThemController.isDarkMode.value
                                ? Colors.green
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      )
                    : Image.network(
                        imagePickerController.imagePath.value,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => ElevatedButton(
              onPressed: () {
                imagePickerController.getImage(ImageSource.gallery);
              },
              child: Text(
                "Click for Pic Images",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: appThemController.isDarkMode.value
                      ? Colors.white
                      : Colors.green,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => Text(
              "Click here get more",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: appThemController.isDarkMode.value
                    ? Colors.white
                    : Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
