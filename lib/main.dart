import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
    appBarTheme: AppBarTheme(color: Colors.teal[300]),
      primaryColor: Colors.amber,canvasColor: const Color.fromARGB(255, 248, 245, 233)),
    ),
  );
}
