import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images_categories = [
    "assets/cate1.png",
    "assets/cate2.png",
    "assets/cate3.png",
    "assets/cate4.png",
  ];

  List<String> label_categories = [
    "Haircare",
    "Skincare",
    "Lip Stick",
    "Nail Art",
  ];

  List<String> images_Recommend = [
    "assets/Rec1.png",
    "assets/Rec2.png",
    "assets/Rec3.png",
  ];

  List<String> label_Recommend = [
    "Chanel Cerest",
    "Chanel Cerest",
    "Chanel Cerest",
  ];

  List<String> label2_Recommend = [
    "Andora Skincare",
    "Andora Skincare",
    "Andora Skincare",
  ];

  List<String> price = [
    "\$24.00",
    "\$24.00",
    "\$24.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        title: Text(
          "Descover",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1,
        actions: [Image(image: AssetImage("assets/cart.png"))],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Text("Categories",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 175,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images_categories.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Container(
                            height: 102,
                            width: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(images_categories[index]),
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(label_categories[index]),
                      ]);
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Text("Recommend for You",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images_Recommend.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Container(
                            height: 210,
                            width: 130,
                            child: Stack(children: [
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        images_Recommend[index],
                                      ),
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              Positioned(
                                right: 5,
                                top: 5,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white24,
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 50,
                                  child: Text(label_Recommend[index])),
                              Positioned(
                                  bottom: 30,
                                  child: Text(label2_Recommend[index])),
                              Positioned(bottom: 10, child: Text(price[index])),
                            ]),
                          ),
                        ),
                      ]);
                    },
                  ),
                ),
              ],
            ),
          ),




          
        ],
      ),
    );
  }
}
