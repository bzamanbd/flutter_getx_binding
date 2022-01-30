import 'package:flutter/material.dart';
import '../getxControllers/my_controller.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  final String title;
  const SecondPage({Key? key, required this.title}) : super(key: key);

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
            Obx(() => Text(
                  'Second Number : ${Get.find<MyController>().count}',
                  textScaleFactor: 1.2,
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.find<MyController>().increment(),
              child: const Text(
                'Increment',
                textScaleFactor: 1.2,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                'Go Back',
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
