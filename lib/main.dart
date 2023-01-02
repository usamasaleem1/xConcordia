import 'package:flutter/material.dart';
import '../widgets/navBar.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(), // Provide light theme
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light, // or ThemeMode.dark
      home: const navBar(),
    );
  }
}


void toggleMode() {
  print(Get.isDarkMode);
  Get.isDarkMode
      ? Get.changeTheme(ThemeData.light())
      : Get.changeTheme(ThemeData.dark());
}
