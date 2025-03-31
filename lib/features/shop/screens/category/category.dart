import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryState();
}

class _CategoryState extends State<CategoryScreen> {
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
  ];

  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"}
  ];

  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"}
  ];

  var hosuehold = [
    {"img": "image 36.png","text" : "Laundry \nDetergent"},
    {"img": "image 37.png","text" : "Soaps &\n Shampoos"},
    {"img": "image 38.png","text" : "Mop &\n Bucket"},
    {"img": "image 39.png","text" : "Sofas &\n Furniture"},
    {"img": "image 40.png","text": "Beauty &\n Cosmetics"}
  ];

  @override
  Widget build(BuildContext context) {

    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.fromLTRB(0,0,0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height*0.25,
                width: width,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,30,10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Blinkit in",
                                style: TextStyle(
                                  color: Colors.black,
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
                              color: Colors.black,
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
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'regular'
                                ),
                              ),
                              Text(
                                "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'regular'
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height*0.023,),
                          Container(
                            height: height*0.05,
                            width: width,
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
                  ],
                ),
              ),
              SizedBox(height: height*0.020,),
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

              SizedBox(height: height*0.01,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: height*0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: grocerykitchen.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: height*0.09,
                              width: width*0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0XFFD9EBEB),
                              ),
                              child: Image.asset(
                                "assets/images/category/${grocerykitchen[index]["img"]}".toString(),
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
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: height*0.15, // Adjust based on your UI needs
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: secondgrocery.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: height*0.09,
                              width: width*0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0XFFD9EBEB),
                              ),
                              child: Image.asset(
                                "assets/images/category/${secondgrocery[index]["img"]}".toString(),
                                fit: BoxFit.cover, // Adjust if needed
                              ),
                            ),
                          ),
                          Text(
                            secondgrocery[index]["text"].toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,10, 0),
                child: Text(
                  "Snacks & Drinks",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "bold",
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: height*0.15, // Adjust based on UI needs
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snacksanddrinks.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: height*0.09,
                              width: width*0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0XFFD9EBEB),
                              ),
                              child:
                              Image.asset(
                                "assets/images/category/${snacksanddrinks[index]["img"]}".toString(),
                                fit: BoxFit.cover, // Adjust if needed
                              ),
                            ),
                          ),
                          Text(
                            snacksanddrinks[index]["text"].toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,10, 0),
                child: Text(
                  "Household Essentials",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: "bold",
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: height*0.15, // Adjust based on UI needs
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:hosuehold.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: height*0.09,
                              width: width*0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0XFFD9EBEB),
                              ),
                              child:
                              Image.asset(
                                "assets/images/category/${hosuehold[index]["img"]}".toString(),
                                fit: BoxFit.cover, // Adjust if needed
                              ),
                            ),
                          ),
                          Text(
                            hosuehold[index]["text"].toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: height*0.05)


            ],

          ),
        ),
      ),
    );

  }
}