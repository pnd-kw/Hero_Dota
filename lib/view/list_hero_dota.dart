import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_dota/model/hero_dota_model.dart';
import 'package:hero_dota/view/hero_dota_info_edit.dart';

class ListHeroDota extends StatelessWidget {
  const ListHeroDota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: heroDotaInfo.length,
          itemBuilder: (context, index) {
            final heroDota = heroDotaInfo[index];
            return InkWell(
              onTap: () {
                Get.to(() => const HeroDotaInfoEdit());
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(heroDota.imageUrls),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(
                            heroDota.nama,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            heroDota.deskripsi,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
