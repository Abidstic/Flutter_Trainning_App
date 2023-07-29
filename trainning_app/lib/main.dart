import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'video_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //this widget is the root for the whole application
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Trainning", // name of the app
      debugShowCheckedModeBanner:
          false, //this is used to remove the debug banner on the test device
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      //here we have selected a color scheme
      home: const VideoInfo(),
    );
  }
}
