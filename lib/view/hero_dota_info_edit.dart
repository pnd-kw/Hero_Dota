import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_dota/controller/hero_dota_info_controller.dart';
import 'package:hero_dota/view/hero_dota_info.dart';

class HeroDotaInfoEdit extends StatelessWidget {
  const HeroDotaInfoEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroDotaInfoCtrl = Get.put(HeroDotaInfoController());
    final heroDotaCtrl = Get.find<HeroDotaInfoController>();
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 20.0, top: 200.0, right: 20.0, bottom: 20.0),
            child: TextFormField(
              onChanged: (text) {
                heroDotaInfoCtrl.nama.value = text;
              },
              decoration: InputDecoration(
                hintText: heroDotaCtrl.nama.value,
                labelText: 'Nama',
                enabledBorder: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
            child: TextFormField(
              onChanged: (text) {
                heroDotaInfoCtrl.deskripsi.value = text;
              },
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: heroDotaCtrl.deskripsi.value,
                labelText: 'Deskripsi',
                enabledBorder: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 100.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const HeroDotaInfo());
                  },
                  child: const Text('LIHAT'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
