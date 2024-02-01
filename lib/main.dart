import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanketkportfolio/app/modules/home/views/home_view.dart';
import 'package:sanketkportfolio/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'AboutMe',
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
  ));
}
