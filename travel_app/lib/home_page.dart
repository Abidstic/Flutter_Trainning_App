import 'package:flutter/material.dart';
import 'color.dart' as customColor;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: customColor.AppColor.homePageTitle,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                  color: customColor.AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: customColor.AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: customColor.AppColor.homePageIcons,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Your Program",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: customColor.AppColor.homePageSubtitle,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: customColor.AppColor.homePageDetail,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  size: 20,
                  color: customColor.AppColor.homePageIcons,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    customColor.AppColor.gradientFirst.withOpacity(0.8),
                    customColor.AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(12, 12),
                    blurRadius: 20,
                    color: customColor.AppColor.gradientSecond.withOpacity(0.2),
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                        fontSize: 16,
                        color: customColor.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Legs Toining",
                      style: TextStyle(
                        fontSize: 25,
                        color: customColor.AppColor.homePageContainerTextBig,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        fontSize: 25,
                        color: customColor.AppColor.homePageContainerTextBig,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: customColor
                                  .AppColor.homePageContainerTextSmall,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "60 min",
                              style: TextStyle(
                                fontSize: 14,
                                color: customColor
                                    .AppColor.homePageContainerTextSmall,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                color: customColor.AppColor.gradientFirst,
                                blurRadius: 10,
                                offset: const Offset(3, 6),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 60,
                            color:
                                customColor.AppColor.homePageContainerTextBig,
                          ),
                        ),
                      ],
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
}
