import 'package:get/route_manager.dart';
import 'package:getx_pratice/views/routing/screen_one.dart';
import 'package:getx_pratice/views/routing/screen_two.dart';

class RoutName {
  static const screenOne = "/screenOne";
  static const screenTwo = "/screenOne";

  final getPages = [
    GetPage(name: RoutName.screenOne, page: () => ScreenOne()),
    GetPage(name: RoutName.screenTwo, page: () => ScreenTwo()),
  ];
}
