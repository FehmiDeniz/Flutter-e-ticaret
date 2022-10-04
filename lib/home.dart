import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final List<String> images = ["assets/image1.png", "assets/image2.png"];
  final List<String> menus = [
    "assets/apparel.png",
    "assets/school.png",
    "assets/sport.png",
    "assets/electronic.png",
    "assets/all.png",
  ];

  final List<String> menusText = [
    "Apparel",
    "School",
    "Sports",
    "Electronic",
    "All"
  ];

  final List<String> gridimages = [
    "assets/g1.png",
    "assets/g2.png",
    "assets/g3.png",
    "assets/g4.png"
  ];

  final List<String> text1 = [
    "  Monitor LG 22”inc 4K 120Fps",
    "  Aestechic Mug - white variant",
    "  Airpods pro",
    "  Playstation 4 - SSD 128 GB"
  ];
  final List<String> price = [r"  $199", r"  $19.99", r"  $499,99", r"  $1999"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery address",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffC8C8CB)),
                      ),
                      Row(
                        children: [
                          Text(
                            "Salatiga City, Central Java",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff393F42)),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/Buy.png"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/Notification.png"),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 40,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 35,
                    ),
                    labelText: "Search Here...",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Color(0xffC8C8CB)),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 304,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[index]))),
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 14, color: Color(0xff393F42)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menus.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 70,
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(menus[index]),
                              ),
                            ),
                          ),
                          Text(
                            menusText[index],
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff939393)),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 120,
                        height: 14,
                        child: Text(
                          "Recent Product",
                          style: TextStyle(fontSize: 15),
                        )),
                    Container(
                        width: 100,
                        height: 40,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/filters.png")),
                        ))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 600,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: gridimages.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.6),
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 170,
                      height: 150,
                      color: Color(0xffFAFAFC),
                      child: Column(
                        children: [
                          Container(
                            width: 170,
                            height: 115,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  gridimages[index],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              text1[index],
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Color(0xff393F42)),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              price[index],
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 31,
                            width: 144,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff67C4A7),
                            ),
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


/*container-image

text

text */