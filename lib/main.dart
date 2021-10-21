import 'package:a73/models/orang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // var orang = Orang(nama: 'brangkak', umur: 50).obs;
  var orang = Get.put(Orang(nama: 'brangkak', umur: 50).obs);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(
            () => Text(
              'nama saya ${orang.value.nama}',
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            orang.update((_) {
              orang.value.nama = orang.value.nama.toString().toUpperCase();
            });
          },
        ),
      ),
    );
  }
}
