import './controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // final controlC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GetBuilder<CounterController>(
            init: CounterController(), //pengganti get.put
            builder: (controller) => Text(
              'Angka ${controller.count}',
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.find<CounterController>().increment();
            //controlC.increment();
          },
        ),
      ),
    );
  }
}
