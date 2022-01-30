import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/home_screen.dart';
import '../getxControllers/all_controller_binding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String _title = 'Getx Binding';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: HomeScreen(title: _title,),
    );
  }
}
