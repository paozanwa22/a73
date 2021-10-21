import './controllers/orang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final orangc = Get.put(OrangController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(
            () => Text(
              'nama saya ${orangc.orang.nama}',
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orangc.changeUpperCase();
          },
        ),
      ),
    );
  }
}
