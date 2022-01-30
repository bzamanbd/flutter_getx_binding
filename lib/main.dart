import 'package:flutter/material.dart';
import 'getxControllers/myapp_controllers_binding.dart.dart';
import 'package:flutter_getx_binding/screens/second_page.dart';
import 'package:get/get.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
  MyappControllersBinding().dependencies();
}

class MyApp extends StatelessWidget {
  final String _title = 'Getx Binding in Route';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeScreen(
        title: _title,
      ),
      getPages: [
        GetPage(
          name: '/home-page',
          page: () => HomeScreen(title: _title),
          binding: MyappControllersBinding(),
        ),
        GetPage(
          name: '/second-page',
          page: () => SecondPage(title: _title),
          binding: MyappControllersBinding(),
        ),
      ],
    );
  }
}
