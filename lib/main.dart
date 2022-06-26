import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_dota/view/list_hero_dota.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListHeroDota(),
    );
  }
}
