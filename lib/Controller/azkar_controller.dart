import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tasbih/Model/azkar_model.dart';

class AzkarController extends GetxController {
  List<Azkar> azkar = [];
  late final String jsonFile;

  @override
  void onInit() {
    jsonFile = Get.arguments;

    _loadJson();
    super.onInit();
  }

  Future _loadJson() async {
    String response =
        await rootBundle.loadString(jsonFile);
    final data = jsonDecode(response);
    for (Map<String, dynamic> json in data) {
      azkar.add(Azkar.fromJson(json));
    }
    update();
  }
}
