import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget
{
  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {

  var categroy = [
    {"img": "image 54.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun\n By Bikano"},
    {"img": "image 63.png", "text": "Golden Glass\n Wooden Lid Candle (Oudh)"},
  ];
  var data = [
    {"img": "image 51.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "image 51.png", "text": "Diwali \n Gifts"},
    {"img": "image 52.png", "text": "Appliances  \n & Gadgets"},
    {"img": "image 53.png", "text": "Home \n & Living"}
  ];
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
  ];

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height*0.52,
                width: width,
                color:  Color(0XFFEC0505),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,40,10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Blinkit in",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: height*0.018,
                                  fontFamily: "bold",
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
        
                            ],
                          ),
                          Text(
                            "16 minutes",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "bold",
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "HOME ",
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'regular'
                                ),
                              ),
                              Text(
                                "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'regular'
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height*0.023,),
                          Container(
                            height: height*0.06,
                            width: 360,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0XFFC5C5C5)
                                )
                            ),
                            child: TextField(
        
                              decoration: InputDecoration(
                                  hintText: "Search 'ice-cream'",
                                  prefixIcon: Image.asset("assets/images/home2/search.png"),
                                  suffixIcon: Image.asset("assets/images/home2/mic 1.png"),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                          SizedBox(height: height*0.02,),
                        ],
                      ),
                    ),
                    SizedBox(height: height*0.02,),
                    Divider(color: Colors.white,height: 1,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(7,10,7, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: width*0.1,
                              child: Image.asset("assets/images/home2/diwalilight.png")
                          ),
                          Container(
                              width: width*0.11,
                              child: Image.asset("assets/images/home2/image 55.png")
                          ),
        
                          Text(
                            "Mega Diwali Sale",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "bold",
                            ),
                          ),
                          Container(
                              width: width*0.1,
                              child: Image.asset("assets/images/home2/image 55.png")
                          ),
                          Container(
                              width: width*0.1,
                              child: Image.asset("assets/images/home2/diwalilight.png")
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.167,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
                        child: SizedBox(
                          height: height * 0.167, // Ensure proper height
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0XFFEAD3D3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        data[index]["text"].toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/home2/${data[index]["img"]}".toString(),
                                        fit: BoxFit.cover, // Adjust if needed
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: data.length,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.29,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                  child: SizedBox(
                    height: height * 0.29, // Maintain layout consistency
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  "assets/images/home2/${categroy[index]["img"]}".toString(),
                                  fit: BoxFit.cover, // Adjust if needed
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                categroy[index]["text"].toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/home2/timer 4.png",
                                    width: 16, height: 16, // Adjust size if needed
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "16 MINS",
                                    style: TextStyle(
                                      color: Color(0XFF9C9C9C),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/home2/image 50 (1).png",
                                    width: 16, height: 16, // Adjust size if needed
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "79",
                                    style: TextStyle(
                                      color: Color(0XFF9C9C9C),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: categroy.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,10, 0),
                child: Text(
                  "Grocery & Kitchen",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "bold",
                  ),
                ),
              ),
              Container(
                height: height * 0.29,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: height * 0.29, // Maintain layout consistency
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 78,
                                width: 71,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0XFFD9EBEB),
                                ),
                                child: Image.asset(
                                  "assets/images/home2/${grocerykitchen[index]["img"]}".toString(),
                                  fit: BoxFit.cover, // Adjust if needed
                                ),
                              ),
                            ),
                            Text(
                              grocerykitchen[index]["text"].toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: grocerykitchen.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}