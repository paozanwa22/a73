import 'package:a73/models/orang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var orang = Get.put(Orang());
  // var orang = Orang();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(
            () => Text(
              'nama saya ${orang.nama}',
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orang.nama.value = orang.nama.value.toUpperCase();
          },
        ),
      ),
    );
  }
}
