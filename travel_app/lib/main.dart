import 'package:flutter/material.dart';
import 'package:travel_app/video_info.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //this widget is the root for the whole application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel App", // name of the app
      debugShowCheckedModeBanner:
          false, //this is used to remove the debug banner on the test device
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      //here we have selected a color scheme
      home: VideoInfo(),
    );
  }
}
