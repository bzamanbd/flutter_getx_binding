import 'package:flutter/material.dart';
import '../getxControllers/my_controller.dart';
import '../getxControllers/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              ()=>Text('Home Number : ${Get.find<HomeController>().count}', textScaleFactor: 1.3,),
              ),

            const SizedBox(height: 25,),
            ElevatedButton(
              onPressed: ()=>Get.find<HomeController>().increment(),
              child: const Text('Click',textScaleFactor: 1.4,),
            ),
            const SizedBox(
              height: 25,
            ),
            Obx(
              ()=>Text('SecondNumber : ${Get.find<MyController>().count}', textScaleFactor: 1.3,),
              ),

            const SizedBox(height: 25,),
            ElevatedButton(
              onPressed: ()=>Get.find<MyController>().increment(),
              child: const Text('Click',textScaleFactor: 1.4,),
            ),
            const SizedBox(height: 25,),
            ElevatedButton(
              onPressed: ()=>Get.toNamed('/second-page'),
              child: const Text('Second Page', textScaleFactor: 1.2,)
            ),
          ],
        ),
      ),
    );
  }
}
