import 'dart:ui';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.white])),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/image/Group 16 (1).png"))),
                  ),
                  const Text(
                    "Weather",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return const PageSecond();
                              },
                            ));
                          },
                          child: const Text(
                            "let's start",
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageSecond extends StatelessWidget {
  const PageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topRight,
                      colors: [
                    Colors.white,
                    Colors.blue.shade200,
                    Colors.blue.shade300
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [BoxShadow(color: Colors.black12)]),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Enter loclocation",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ...List.generate(3, (index) => const Containerx3()),
                  Container(
                    width: 300,
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/image/Group 16 (1).png"))),
                  ),
                  const Text(
                    "Weather",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Containerx3 extends StatelessWidget {
  const Containerx3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChiTietThoiTiet(),
            )),
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 110, 165, 210),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          width: double.infinity,
          height: 70,
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cairo",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Text(
                      "AQI 53",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "38 / 25",
                      style: TextStyle(color: Colors.white),
                    )
                  ]),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "38°",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChiTietThoiTiet extends StatelessWidget {
  const ChiTietThoiTiet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [Icon(Icons.more_vert)],
        leading: const Icon(Icons.add),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/image/jack-krier-1Ng-7ESDjvk-unsplash 1.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Cairo",
                      style:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
                  const Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Text("38",
                        style: TextStyle(
                            fontSize: 55, fontWeight: FontWeight.bold)),
                  ),
                  const Text("Clear 38 / 25",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(14))),
                    child: const Text("🌿AQI 53",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.5)),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "5-day forecast",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5)),
                                  ),
                                  const Text("🌤️ Mon clear "),
                                  const Text("🌤️ Tue clear "),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("More details",
                                      style: TextStyle(
                                          color:
                                              Colors.black.withOpacity(0.5))),
                                  const Text("39 / 26"),
                                  const Text("39 / 26")
                                ],
                              )
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
