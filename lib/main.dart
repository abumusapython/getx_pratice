import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/utils.dart';
import 'package:getx_pratice/views/app%20them/app_them_controller.dart';
import 'package:getx_pratice/views/counter%20app/counter_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppThemController appThemController = Get.put(AppThemController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        theme: appThemController.LightTheme,
        darkTheme: appThemController.darkTheme,
        themeMode: appThemController.isDarkMode.value
            ? ThemeMode.dark
            : ThemeMode.light,

        initialRoute: "/counter_app",
        getPages: [GetPage(name: "/counter_app", page: () => CounterHome())],
      ),
    );
  }
}
