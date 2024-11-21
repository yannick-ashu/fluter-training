import 'dart:ui';

import 'package:ecoai/screens/onboarding1/onboarding2.dart';
import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardscreen extends StatefulWidget {
  const Onboardscreen({super.key});

  @override
  State<Onboardscreen> createState() => MyWidgetState();
}

class MyWidgetState extends State<Onboardscreen> {
  final PageController controller = PageController();
  int pageIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: pageIndex == 1
                    ? const AssetImage("assets/pickupagent.png")
                    : pageIndex == 2
                    ? const AssetImage("assets/pickupagent.png")
                    :
                    
                     const AssetImage("assets/bot.jpeg"),
                fit: BoxFit.cover)),

        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Stack(children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                        topRight: Radius.circular(200)),
                    color: Colors.green,
                  ),
                  height: 400,
                  width: double.infinity,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      pageIndex = value;
                    });
                  },
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(),
                      child: Center(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 80),
                                child: Image.asset(
                                    height: 150,
                                    alignment: Alignment.center,
                                    "assets/bot2.png"),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Card(
                                margin: const EdgeInsets.all(16),
                                elevation: 5,
                                color: Colors.white,
                                child: SizedBox(
                                  height: 350,
                                  width: 300,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.all(16)),
                                      Image.asset(
                                          height: 50, "assets/ecoailogo.jpeg"),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Center(
                                        child: Text(
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            "Ready for a Trash Evolution"),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Padding(
                                          padding: EdgeInsets.all(18.0),
                                          child: Text(
                                              "EcoAi is your friendly comoanion for easy and convenient trash pickup. we're here to make a positive impact on the environment"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                          width: 200,
                                          child: TextButton(
                                              style: TextButton.styleFrom(
                                                foregroundColor: Colors.white,
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 207, 206, 206),
                                                padding:
                                                    const EdgeInsets.all(8),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                elevation: 15,
                                              ),
                                              onPressed: () {
                                                controller.nextPage(
                                                    duration: const Duration(
                                                        microseconds: 300),
                                                    curve: Curves.easeIn);
                                              },
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                      "Next"),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: Colors.black,
                                                    size: 15,
                                                  )
                                                ],
                                              ))),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(height: 300, "assets/pickupagent.png"),
                        Container(
                          alignment: Alignment.bottomCenter,
                          color: Colors.transparent,
                          child: Card(
                            margin: const EdgeInsets.all(16),
                            elevation: 5,
                            color: Colors.white,
                            child: SizedBox(
                              height: 350,
                              width: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(padding: EdgeInsets.all(16)),
                                  Image.asset(
                                      height: 50, "assets/ecoailogo.jpeg"),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Center(
                                    child: Text(
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        "Simple and Friendly"),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Padding(
                                      padding: EdgeInsets.all(18.0),
                                      child: Text(
                                          "EcoAi is your friendly comoanion for easy and convenient trash pickup. we're here to make a positive impact on the environment"),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                      width: 200,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: const Color.fromARGB(
                                              255, 207, 206, 206),
                                          padding: const EdgeInsets.all(8),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          elevation: 15,
                                        ),
                                        onPressed: () {
                                          controller.nextPage(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              curve: Curves.easeIn);
                                        },
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                                "Next"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Colors.black,
                                              size: 15,
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      color: Colors.transparent,
                      child: Card(
                        margin: const EdgeInsets.all(16),
                        elevation: 5,
                        color: Colors.white,
                        child: SizedBox(
                          height: 350,
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(padding: EdgeInsets.all(16)),
                              Image.asset(height: 50, "assets/ecoailogo.jpeg"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Center(
                                child: Text(
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    "Join us Now"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(15),
                                child: Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Text(
                                      "EcoAi is your friendly comoanion for easy and convenient trash pickup. we're here to make a positive impact on the environment"),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 200,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.blue,
                                      padding: const EdgeInsets.all(8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      elevation: 15,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          (MaterialPageRoute(
                                              builder: (context) =>
                                                  const Authentication())));
                                    },
                                    child: const Text("Get Started")),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),

        //   bottomSheet: Container(
        //     padding: const EdgeInsets.symmetric(horizontal: 8),
        //     height: 80,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         TextButton(
        //             onPressed: () {
        //               controller.jumpToPage(2);
        //             },
        //             child: const Text(
        //                 style: TextStyle(
        //                     color: Colors.green,
        //                     fontSize: 20,
        //                     fontWeight: FontWeight.bold),
        //                 "Skip")),
        //         // Center(
        //         //   child: SmoothPageIndicator(
        //         //     controller: controller,
        //         //     count: 3,
        //         //     effect: const WormEffect(
        //         //       spacing: 16,
        //         //       dotColor: Color.fromARGB(255, 136, 139, 139),
        //         //       activeDotColor: Colors.blue,
        //         //     ),
        //         //     onDotClicked: (index) => controller.animateToPage(index,
        //         //         duration: const Duration(milliseconds: 500),
        //         //         curve: Curves.easeIn),
        //         //   ),
        //         // ),
        //         TextButton(
        //             onPressed: () {
        //               controller.nextPage(
        //                   duration: const Duration(milliseconds: 500),
        //                   curve: Curves.easeInOut);
        //             },
        //             child: const Text(
        //                 style: TextStyle(
        //                     fontSize: 20,
        //                     fontWeight: FontWeight.bold,
        //                     color: Colors.green),
        //                 "Next"))
        //       ],
        //     ),
        //   ),
        // ),
      );
}
