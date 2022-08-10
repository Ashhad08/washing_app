import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:washing_app/presentation/views/getting_started/getting_started_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GettingStartedView(),
    );
  }
}
