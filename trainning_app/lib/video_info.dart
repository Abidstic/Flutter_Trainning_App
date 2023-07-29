import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'color.dart' as Color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfos = [];
  bool _playArea = false;
  _initData() async {
    await DefaultAssetBundle.of(context).loadString("json/videoinfo.json").then(
      (value) {
        setState(() {
          videoInfos = jsonDecode(value);
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _playArea == false
            ? BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.AppColor.gradientFirst.withOpacity(0.8),
                    Color.AppColor.gradientSecond,
                  ],
                  begin: const FractionalOffset(0.0, 0.4),
                  end: Alignment.topRight,
                ),
              )
            : BoxDecoration(
                color: Color.AppColor.gradientSecond,
              ),
        child: Column(
          children: [
            _playArea == false
                ? Container(
                    padding: const EdgeInsets.only(
                      top: 70,
                      left: 30,
                      right: 30,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 20,
                                color: Color.AppColor.secondPageIconColor,
                              ),
                            ),
                            Expanded(child: Container()),
                            Icon(
                              Icons.info_outline_rounded,
                              size: 20,
                              color: Color.AppColor.secondPageIconColor,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Legs Toining",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color.AppColor.secondPageTitleColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "and Glotus Workout",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color.AppColor.secondPageTitleColor,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.AppColor
                                        .secondPageContainerGradient1stColor,
                                    Color.AppColor
                                        .secondPageContainerGradient2ndColor,
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    size: 20,
                                    color: Color
                                        .AppColor.homePageContainerTextSmall,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "60 min",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color
                                          .AppColor.homePageContainerTextSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                width: 250,
                                height: 30,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.AppColor
                                          .secondPageContainerGradient1stColor,
                                      Color.AppColor
                                          .secondPageContainerGradient2ndColor,
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.handyman_rounded,
                                      size: 20,
                                      color: Color
                                          .AppColor.homePageContainerTextSmall,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "Resistant band, Kettle",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.AppColor
                                            .homePageContainerTextSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    height: 300,
                    width: 300,
                    color: Colors.red,
                  ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Circuit 1: Legs Toining",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.AppColor.circuitsColor,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.loop,
                              size: 30,
                              color: Color.AppColor.loopColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3 Sec",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Color.AppColor.setsColor,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: _listView(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _listView() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: (MediaQuery.of(context).size.width) / 20,
        vertical: 10,
      ),
      itemCount: videoInfos.length,
      itemBuilder: (_, int index) {
        return GestureDetector(
          onTap: () {
            debugPrint(index.toString());
            setState(() {
              if (_playArea == false) {
                _playArea = true;
              } else {
                _playArea = false;
              }
            });
          },
          child: _buildCard(index),
        );
      },
    );
  }

  _buildCard(int index) {
    return SizedBox(
      height: 135,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      videoInfos[index]["thumbnail"],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    videoInfos[index]["title"],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text(
                      videoInfos[index]["time"],
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Center(
                  child: Text(
                    "15 sec",
                    style: TextStyle(
                      color: Colors.blue[200],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    for (int i = 0; i < 80; i++)
                      i.isEven
                          ? Container(
                              width: 3,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Colors.blue[200],
                              ),
                            )
                          : Container(
                              width: 3,
                              height: 1,
                              color: Colors.white,
                            ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
