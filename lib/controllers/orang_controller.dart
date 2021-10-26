import 'package:get/get.dart';

import '../models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: 'brangkak', umur: 50).obs;

  void changeUpperCase() {
    orang.update((val) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
  }
}