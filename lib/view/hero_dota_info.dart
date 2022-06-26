import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_dota/controller/hero_dota_info_controller.dart';
import 'package:hero_dota/view/hero_dota_info_edit.dart';

class HeroDotaInfo extends StatelessWidget {
  const HeroDotaInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroDotaInformation = Get.find<HeroDotaInfoController>();
    return Scaffold(
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 200.0, bottom: 20.0),
              child: Text(
                heroDotaInformation.nama.value,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
          Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(heroDotaInformation.deskripsi.value)),
          Container(
            padding: const EdgeInsets.only(top: 100.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => const HeroDotaInfoEdit());
                    },
                    child: const Text('UPDATE')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
