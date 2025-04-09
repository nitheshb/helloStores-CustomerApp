
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget
{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var data = [
    {"img": "assets/images/home/item.png", "text": "Trending"},
    {"img": "assets/images/home/item.png", "text": "Restaurnet\n Equpiment"},
    {"img": "assets/images/home/item.png", "text": "Commercial\n Refrigeration"},
    {"img": "assets/images/home/item.png", "text": "Electronics"},
    {"img": "assets/images/home/item.png", "text": "Meat"},
    {"img": "assets/images/home/item.png", "text": "Bridal"},
    {"img": "assets/images/home/item.png", "text": "Furniture"}

  ];


  var seconddata=
 [
    {"img": "assets/images/home/utensil.png", "text": "Dairy\n Products"},
    {"img": "assets/images/home/carrot.png", "text": "Dairy\n Products"},
    {"img": "assets/images/home/carrot.png", "text": "Dairy\n Products"},
   {"img": "assets/images/home/carrot.png", "text": "Dairy\n Products"},

  ];

  var thirddata=[
    {"img": "assets/images/home/carrot.png", "text": "Dairy\n Products"},
    {"img": "assets/images/home/carrot.png", "text": "Dairy\n Products"},
    {"img": "assets/images/home/carrot.png", "text": "Dairy\n Products"},
    {"img": "assets/images/home/carrot.png", "text": "Dairy\n Products"},
  ];


  var fourthdummy=[
    {"img": "assets/images/home/meat.png", "text": "All"},
    {"img": "assets/images/home/meat.png", "text": "Vegetables"},
    {"img": "assets/images/home/meat.png", "text": "Electronics"},
    {"img": "assets/images/home/meat.png", "text": "Furniture"},
    {"img": "assets/images/home/meat.png", "text": "Bridal"},
  ];

  var fivthdata=[
    {"img": "assets/images/home/carrot.png", "text": "Fresh Organic Kashmir\n Apples",
     "quant":"1","rating":"4.4","price":"189","dashedprice":"199"},
    {"img": "assets/images/home/carrot.png", "text": "Fresh Organic Kashmir\n Apples",
      "quant":"1","rating":"4.4","price":"189","dashedprice":"199"},
    {"img": "assets/images/home/carrot.png", "text": "Fresh Organic Kashmir\n Apples",
      "quant":"1","rating":"4.4","price":"189","dashedprice":"199"},
    {"img": "assets/images/home/carrot.png", "text": "Fresh Organic Kashmir\n Apples",
      "quant":"1","rating":"4.4","price":"189","dashedprice":"199"},
  ];






  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children:
               [
                 _buildHeader(context,height,width),
                 _buildSearchBar(context,height,width),
                 _buildmainthings(context,height,width),
                 _buildFlashSale(context,height,width),
                 _buildBestSelling(context,height,width),
                 _buildElevation(context,height,width),
                 _buildCards(context,height,width),
                 _buildCategory(context,height,width),
                 _buildItems(context,height,width),
                 _buildViewAllProducts(context,height,width),
                 _buildTopSellingUtensils(context,height,width),
                 _buildDealsOnElectronics(context,height,width),
                 _buildViewAllProducts(context, height, width),
                 _buildVegetableCards(context,height,width),
                 _buildDiscoverProductsHeading(context,height,width),
                 _buildDiscoverProducts(context,height,width),
                 _buildBrandsRelatedToSearch(context,height,width),
                 SizedBox(height: height*0.3,)

               ],
             )
        ),
      ),
    );

  }

  Widget _buildHeader(BuildContext context,var height,var width)
  {
   return Padding(
     padding: const EdgeInsets.fromLTRB(8, 8, 20,20),
     child: Container(
           child: Row(
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Blinkit in', textAlign: TextAlign.left, style: TextStyle(
                       color: Color.fromRGBO(25, 25, 25, 1),
                       fontFamily: 'bold',
                       fontSize: height * 0.02,
                       letterSpacing: 0,
                       fontWeight: FontWeight.bold,
                       height: 1
                   ),),
                   SizedBox(height: height*0.01,),
                   Text("11 minutes", textAlign: TextAlign.left, style: TextStyle(
                       color: Color.fromRGBO(25, 25, 25, 1),
                       fontFamily: 'bold',
                       fontSize: height * 0.03,
                       letterSpacing: 0,
                       fontWeight: FontWeight.bold,
                       height: 1
                   ),),
                   SizedBox(height: height*0.01,),
                   Row(
                     children: [
                       Text('Grardn Layout, HSR layout, Sector 2, HSR', textAlign: TextAlign.center, style: TextStyle(
                           color: Color.fromRGBO(61, 61, 61, 1),
                           fontFamily: 'regular',
                           fontSize: height*0.015,
                           letterSpacing: 0,
                           fontWeight: FontWeight.normal,
                           height: 1
                       ),),
                       Icon(Icons.arrow_drop_down_outlined,size: height*0.026,)
                     ],
                   )
                 ],
               ),
               Spacer(),
              Icon(Icons.person,color: Colors.black,size: height*0.04,)
              // Image.asset()
             ],
           ),
     ),
   );
  }

  Widget _buildSearchBar(BuildContext context,var height, var width)
  {
   return   Padding(
     padding: EdgeInsets.symmetric(horizontal: width * 0.05),
     child: TextField(
       style: TextStyle(
         fontSize: height*0.017,
         fontFamily: 'regular'
       ),
       decoration: InputDecoration(
         hintText: 'Search "poojs needs" ',
         prefixIcon: const Icon(Icons.search),
         suffixIcon: const Icon(Icons.mic),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12),
           borderSide: const BorderSide(
             color: Colors.black, // Thin black border
             width: 1,
           ),
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12),
           borderSide: const BorderSide(
             color: Colors.black,
             width: 1,
           ),
         ),
         contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
       ),
     ),
   );
  }
  Widget _buildmainthings(BuildContext context,var height, var width)
  {
    return  Container(
      height: height*0.17,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                 child: Column(
                   children: [
                     Container(
                         height: height*0.08,
                         child: Image.asset("${data[index]['img']}")
                     ),
                     SizedBox(height: height*0.007,),
                     Text("${data[index]['text']}",style: TextStyle(
                       fontFamily: 'light',
                       fontSize: height*0.015
                     ),)
                   ],
                 ),
              ),
            );
          },
        ),
      ),
    );
  }
  Widget _buildFlashSale(BuildContext context,var height, var width)
  {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 0, 17,15),
      child: Container(
        height: height*0.5,
        width: width,
        color: Color(0xFFE7F6EF),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0,0),
          child: Column(
            children: [
              Text('Limited time offer', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'bold',
                  fontSize: height*0.02,
                  letterSpacing: 0 ,
                  fontWeight: FontWeight.normal,
                  height: 1.5
              ),),
              Container(
                 height: height*0.13,
                  width: width,
                  child: Image.asset('assets/images/home/flashsale.png')
              ),
              Text('Up to 90% Off', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'bold',
                  fontSize: 14,
                  letterSpacing: 0 ,
                  fontWeight: FontWeight.normal,
                  height: 1.5
              ),),
              SizedBox(height: height*0.01,),
              Container(
                height: height*0.14,
                child: ListView.builder(
                  itemCount: seconddata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                height: height*0.07,
                                child: Image.asset("${seconddata[index]['img']}")
                            ),
                            SizedBox(height: height*0.007,),
                            Text("${seconddata[index]['text']}",style: TextStyle(
                                fontFamily: 'light',
                                fontSize: height*0.015
                            ),)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Container(
                height: height*0.14,
                child: ListView.builder(
                  itemCount: thirddata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                height: height*0.07,
                                child: Image.asset("${thirddata[index]['img']}")
                            ),
                            SizedBox(height: height*0.007,),
                            Text("${thirddata[index]['text']}",style: TextStyle(
                                fontFamily: 'light',
                                fontSize: height*0.015
                            ),)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),






            ],
          ),
        ),
      ),
    );
  }
  Widget _buildBestSelling(BuildContext context,var height, var width)
  {
    return Column(
      children: [
        Image.asset("assets/images/home/bestselling.png"),
        SizedBox(height: height*0.01,),
        Text('Best selling', textAlign: TextAlign.center, style: TextStyle(
            color: Color.fromRGBO(87, 87, 87, 1),
            fontFamily: 'regular',
            fontSize: height*0.017,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1
        ),),
        SizedBox(height: height*0.01,),

        Container(
          width: width,
          height: height*0.05,

          decoration: BoxDecoration(
            gradient : LinearGradient(
                colors: [Color.fromRGBO(242, 196, 79, 0),Color.fromRGBO(242, 196, 79, 1),Color.fromRGBO(242, 196, 79, 0)]
            ),
          ),
          child:  Center(
            child: Text('Fast-Moving Essentials', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'bold',
                fontSize: height*0.016,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
            ),),
          ),
        ),


    ]
    );
  }
  Widget _buildElevation(BuildContext context,var height, var width)
  { 
    return  Padding(
      padding: const EdgeInsets.fromLTRB(8, 15, 8, 25),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height*0.2,
                        width: width*0.42,
                        child: Image.asset("assets/images/home/redbull.png"),
                      ),
                    ),
                    SizedBox(height: height*0.005,),
                    Text('Elevation series \n Shelving', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'bold',
                        fontSize: height*0.016,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333
                    ),),
                    SizedBox(height: height*0.005,),
                    Text('Maximize Work space', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontFamily: 'regular',
                        fontSize: height*0.013,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                  ],
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height*0.2,
                        width: width*0.42,
                        child: Image.asset("assets/images/home/redbull.png"),
                      ),
                    ),
                    SizedBox(height: height*0.005,),
                    Text('Elevation series \n Shelving', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'bold',
                        fontSize: height*0.016,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333
                    ),),
                    SizedBox(height: height*0.005,),
                    Text('Maximize Work space', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontFamily: 'regular',
                        fontSize: height*0.013,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                  ],
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: height*0.01,),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height*0.2,
                        width: width*0.42,
                        child: Image.asset("assets/images/home/redbull.png"),
                      ),
                    ),
                    SizedBox(height: height*0.005,),
                    Text('Elevation series \n Shelving', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'bold',
                        fontSize: height*0.016,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333
                    ),),
                    SizedBox(height: height*0.005,),
                    Text('Maximize Work space', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontFamily: 'regular',
                        fontSize: height*0.013,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                  ],
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height*0.2,
                        width: width*0.42,
                        child: Image.asset("assets/images/home/redbull.png"),
                      ),
                    ),
                    SizedBox(height: height*0.005,),
                    Text('Elevation series \n Shelving', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'bold',
                        fontSize: height*0.016,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333
                    ),),
                    SizedBox(height: height*0.005,),
                    Text('Maximize Work space', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontFamily: 'regular',
                        fontSize: height*0.013,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                  ],
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Widget _buildCards(BuildContext context,var height, var width)
  {
    return Column(
     children: [
       Container(
          height: height*0.23,
           width: width,
           child: Image.asset("assets/images/home/shopping.png")
       ),
       SizedBox(height: height*0.02,),
       Container(
           height: height*0.23,
           width: width,
           child: Image.asset("assets/images/home/fresh.png")
       ),
     ],
    );
  }
  Widget _buildCategory(BuildContext context,var height, var width)
  {
    return  Column(
      children: [
        Container(
          height: height*0.14,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
            child: ListView.builder(
              itemCount: fourthdummy.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            height: height*0.07,
                            child: Image.asset("${fourthdummy[index]['img']}")
                        ),
                        SizedBox(height: height*0.007,),
                        Text("${fourthdummy[index]['text']}",style: TextStyle(
                            fontFamily: 'light',
                            fontSize: height*0.015
                        ),)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Divider(height: 1,)
      ],
    );
  }
  Widget _buildItems(BuildContext context,var height, var width)
  {
    return Column(
        children: [
          Container(
            height: height*0.38,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      height: height*0.4,
                      width: width*0.36,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                              children: [
                                Container(
                                  height: height*0.23,
                                  width: width*0.35,
                                  child: Image.asset("assets/images/home/carrot2.png"),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.withOpacity(0.1)
                                  ),
                                ),
                                Positioned(
                                    child:    Container(
                                      decoration: BoxDecoration(
                                        borderRadius : BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        color : Color.fromRGBO(200, 3, 51, 1),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,

                                        children: <Widget>[
                                          Text('10% \nOff', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Segoe UI',
                                              fontSize: height*0.015,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),),

                                        ],
                                      ),
                                    )
                                ),
                                Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child:  Container(
                                      width: width*0.15,
                                      height: height*0.04,

                                      decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child:
                                      Center(
                                          child: Text('Add', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),

                                    )
                                )
                              ]
                          ),
                          SizedBox(height: height*0.01,),
                          Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(25, 25, 25, 1),
                              fontFamily: 'regular',
                              fontSize: height*0.013,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1
                          ),),
                          SizedBox(height: height*0.01,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('1kg', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                  fontFamily: 'regular',
                                  fontSize: height*0.013,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              Spacer(),
                              Text('Option', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(31, 121, 211, 1),
                                  fontFamily: 'regular',
                                  fontSize: height*0.013,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                            ],
                          ),
                          SizedBox(height: height*0.01,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('₹189',
                                style: TextStyle(
                                    fontSize: height*0.020,
                                    fontFamily: 'regular'
                                ),
                              ),
                              SizedBox(width: width*0.02,),
                              Text('₹199',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: height*0.020,
                                  fontFamily: 'regular',
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),

                            ],
                          ),
                          SizedBox(width: width*0.02,),
                          Text('Tomarrow 7AM-11AM',
                            style: TextStyle(
                                fontSize: height*0.012,
                                fontFamily: 'regular'
                            ),
                          ),





                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: height*0.38,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Container(
                      height: height*0.4,
                      width: width*0.36,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                              children: [
                                Container(
                                  height: height*0.23,
                                  width: width*0.35,
                                  child: Image.asset("assets/images/home/carrot2.png"),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey.withOpacity(0.1)
                                  ),
                                ),
                                Positioned(
                                    child:    Container(
                                      decoration: BoxDecoration(
                                        borderRadius : BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        color : Color.fromRGBO(200, 3, 51, 1),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,

                                        children: <Widget>[
                                          Text('10% \nOff', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Segoe UI',
                                              fontSize: height*0.015,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),),

                                        ],
                                      ),
                                    )
                                ),
                                Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child:  Container(
                                      width: width*0.15,
                                      height: height*0.04,

                                      decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child:
                                      Center(
                                          child: Text('Add', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),

                                    )
                                )
                              ]
                          ),
                          SizedBox(height: height*0.01,),
                          Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(25, 25, 25, 1),
                              fontFamily: 'regular',
                              fontSize: height*0.013,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1
                          ),),
                          SizedBox(height: height*0.01,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('1kg', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                  fontFamily: 'regular',
                                  fontSize: height*0.013,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              Spacer(),
                              Text('Option', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(31, 121, 211, 1),
                                  fontFamily: 'regular',
                                  fontSize: height*0.013,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                            ],
                          ),
                          SizedBox(height: height*0.01,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('₹189',
                                style: TextStyle(
                                    fontSize: height*0.020,
                                    fontFamily: 'regular'
                                ),
                              ),
                              SizedBox(width: width*0.02,),
                              Text('₹199',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: height*0.020,
                                  fontFamily: 'regular',
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),

                            ],
                          ),
                          SizedBox(width: width*0.02,),
                          Text('Tomarrow 7AM-11AM',
                            style: TextStyle(
                                fontSize: height*0.012,
                                fontFamily: 'regular'
                            ),
                          ),





                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
  }
  Widget _buildViewAllProducts(BuildContext context,var height, var width)
  {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0,0),
      child: Row(
        children:
        [
          Text('View all Products', textAlign: TextAlign.left, style: TextStyle(
              color: Color.fromRGBO(13, 118, 0, 1),
              fontFamily: 'regular',
              fontSize: height*0.02,
              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1
          ),),
          SizedBox(width: width*0.05,),
          Icon(Icons.chevron_right,color: Color.fromRGBO(13, 118, 0, 1),)
        ],
      ),
    );
  }
  Widget _buildTopSellingUtensils(BuildContext context,var height, var width)
  {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0,20),
      child: Container(
        height: height*0.26,
        width: width,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: height*0.28,
              width: width*0.3,
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Image.asset("assets/images/home/cooker.png")
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Explore Top Selling', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.017,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333
                  ),),
                  SizedBox(height: height*0.02,),
                  Text('Utensils', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'bold',
                      fontSize: height*0.022,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                  SizedBox(height: height*0.02,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Explore', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(13, 118, 0, 1),
                              fontFamily: 'regular',
                              fontSize: height*0.022,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1
                          ),),
                          Icon(Icons.chevron_right,  color: Color.fromRGBO(13, 118, 0, 1),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: height*0.28,
              width: width*0.3,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset("assets/images/home/spoon.png")
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget _buildDealsOnElectronics(BuildContext context,var height, var width)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Deals on electronics', textAlign: TextAlign.left, style: TextStyle(
              color: Color.fromRGBO(51, 51, 51, 1),
              fontFamily: 'bold',
              fontSize: height*0.02,
              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1.1428571428571428
          ),),
        ),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0,10),
                  child: Container(
                    width: width*0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0,10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height*0.2,
                                  child: Image.asset("assets/images/home/refrig.png")
                              ),
                              SizedBox(height: height*0.015,),
                              Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(25, 25, 25, 1),
                                  fontFamily: 'regular',
                                  fontSize: height*0.016,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              SizedBox(height: height*0.01,),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('₹189',
                                      style: TextStyle(
                                          fontSize: height*0.022,
                                          fontFamily: 'regular'
                                      ),
                                    ),
                                    SizedBox(width: width*0.02,),
                                    Text('₹199',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: height*0.022,
                                        fontFamily: 'regular',
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: height*0.01,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star_border_outlined,color: Colors.orange,size: height*0.025,),
                                  SizedBox(width: width*0.02,),
                                  Text('4,764', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(102, 102, 102, 1),
                                      fontFamily: 'regular',
                                      fontSize: height*0.012,
                                      letterSpacing: 0 ,
                                      fontWeight: FontWeight.normal,

                                  ),)
                                ],
                              ),
                              SizedBox(height: height*0.01,),
                              Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                      borderRadius: BorderRadius.circular(17)
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Limited time deal', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(249, 249, 249, 1),
                                          fontFamily: 'regular',
                                          fontSize: height*0.012,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),
                                                        ),
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0,10),
                  child: Container(
                    width: width*0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0,10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: height*0.2,
                                  child: Image.asset("assets/images/home/refrig.png")
                              ),
                              SizedBox(height: height*0.015,),
                              Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(25, 25, 25, 1),
                                  fontFamily: 'regular',
                                  fontSize: height*0.016,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              SizedBox(height: height*0.01,),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('₹189',
                                      style: TextStyle(
                                          fontSize: height*0.022,
                                          fontFamily: 'regular'
                                      ),
                                    ),
                                    SizedBox(width: width*0.02,),
                                    Text('₹199',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: height*0.022,
                                        fontFamily: 'regular',
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: height*0.01,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star_border_outlined,color: Colors.orange,size: height*0.025,),
                                  SizedBox(width: width*0.02,),
                                  Text('4,764', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                    fontFamily: 'regular',
                                    fontSize: height*0.012,
                                    letterSpacing: 0 ,
                                    fontWeight: FontWeight.normal,

                                  ),)
                                ],
                              ),
                              SizedBox(height: height*0.01,),
                              Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(17)
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Limited time deal', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(249, 249, 249, 1),
                                          fontFamily: 'regular',
                                          fontSize: height*0.012,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),
                                      ),
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0,10),
                  child: Container(
                    width: width*0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0,10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: height*0.2,
                                  child: Image.asset("assets/images/home/refrig.png")
                              ),
                              SizedBox(height: height*0.015,),
                              Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(25, 25, 25, 1),
                                  fontFamily: 'regular',
                                  fontSize: height*0.016,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              SizedBox(height: height*0.01,),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('₹189',
                                      style: TextStyle(
                                          fontSize: height*0.022,
                                          fontFamily: 'regular'
                                      ),
                                    ),
                                    SizedBox(width: width*0.02,),
                                    Text('₹199',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: height*0.022,
                                        fontFamily: 'regular',
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: height*0.01,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star_border_outlined,color: Colors.orange,size: height*0.025,),
                                  SizedBox(width: width*0.02,),
                                  Text('4,764', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                    fontFamily: 'regular',
                                    fontSize: height*0.012,
                                    letterSpacing: 0 ,
                                    fontWeight: FontWeight.normal,

                                  ),)
                                ],
                              ),
                              SizedBox(height: height*0.01,),
                              Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(17)
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Limited time deal', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(249, 249, 249, 1),
                                          fontFamily: 'regular',
                                          fontSize: height*0.012,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),
                                      ),
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0,10),
                  child: Container(
                    width: width*0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0,10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: height*0.2,
                                  child: Image.asset("assets/images/home/refrig.png")
                              ),
                              SizedBox(height: height*0.015,),
                              Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(25, 25, 25, 1),
                                  fontFamily: 'regular',
                                  fontSize: height*0.016,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              SizedBox(height: height*0.01,),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('₹189',
                                      style: TextStyle(
                                          fontSize: height*0.022,
                                          fontFamily: 'regular'
                                      ),
                                    ),
                                    SizedBox(width: width*0.02,),
                                    Text('₹199',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: height*0.022,
                                        fontFamily: 'regular',
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: height*0.01,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star,color: Colors.orange,size: height*0.025,),
                                  Icon(Icons.star_border_outlined,color: Colors.orange,size: height*0.025,),
                                  SizedBox(width: width*0.02,),
                                  Text('4,764', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(102, 102, 102, 1),
                                    fontFamily: 'regular',
                                    fontSize: height*0.012,
                                    letterSpacing: 0 ,
                                    fontWeight: FontWeight.normal,

                                  ),)
                                ],
                              ),
                              SizedBox(height: height*0.01,),
                              Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(17)
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Limited time deal', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(249, 249, 249, 1),
                                          fontFamily: 'regular',
                                          fontSize: height*0.012,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),
                                      ),
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

      ],
    );
  }
  Widget _buildVegetableCards(BuildContext context,var height, var width)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFE5EFEA),
                ),
                height: height*0.3,
                width: width*0.87,

                child: Center(
                    child: Image.asset("assets/images/home/vegetables.png")
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.03,),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFE5EFEA),
                ),
                height: height*0.3,
                width: width*0.87,

                child: Center(
                    child: Image.asset("assets/images/home/vegetables.png")
                ),
              ),
            ),
          ),
          SizedBox(width: width*0.03,),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFE5EFEA),
                ),
                height: height*0.3,
                width: width*0.87,

                child: Center(
                    child: Image.asset("assets/images/home/vegetables.png")
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildDiscoverProductsHeading(BuildContext context,var height, var width)
  {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
      child: Text('Discover the products', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(51, 51, 51, 1),
          fontFamily: 'bold',
          fontSize: height*0.02,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1.1428571428571428
      ),),
    );
  }
  Widget _buildDiscoverProducts(BuildContext context,var height, var width)
  {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                        children: [
                          Container(
                            height: height*0.23,
                            width: width*0.44,
                            child: Image.asset("assets/images/home/carrot2.png"),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.1)
                            ),
                          ),
                          Positioned(
                              child:    Container(
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color : Color.fromRGBO(200, 3, 51, 1),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,

                                  children: <Widget>[
                                    Text('10% \nOff', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Segoe UI',
                                        fontSize: height*0.015,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),

                                  ],
                                ),
                              )
                          ),
                          Positioned(
                              bottom: 10,
                              right: 10,
                              child:  Container(
                                width: width*0.15,
                                height: height*0.04,

                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child:
                                Center(
                                    child: Icon(Icons.add,size: height*0.025,)
                                ),

                              )
                          )
                        ]
                    ),
                    SizedBox(height: height*0.01,),
                    Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(25, 25, 25, 1),
                        fontFamily: 'regular',
                        fontSize: height*0.017,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),),
                    SizedBox(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('4.4', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(25, 25, 25, 1),
                            fontFamily: 'regular',
                            fontSize: height*0.014,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                        SizedBox(width: width*0.02,),
                        Icon(Icons.star,color: Colors.orange,size: height*0.02,),
                        SizedBox(width: width*0.02,),
                        Text('( 21,002)', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(102, 102, 102, 1),
                            fontFamily: 'regular',
                            fontSize: height*0.014,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),)
                      ],
                    ),
                    SizedBox(height: height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('₹189',
                          style: TextStyle(
                              fontSize: height*0.020,
                              fontFamily: 'regular'
                          ),
                        ),
                        SizedBox(width: width*0.02,),
                        Text('₹199',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: height*0.020,
                            fontFamily: 'regular',
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: height*0.01,),

                    Text('20k+ bought in past month', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(25, 25, 25, 1),
                        fontFamily: 'regular',
                        fontSize: height*0.012,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)

                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                      children: [
                        Container(
                          height: height*0.23,
                          width: width*0.44,
                          child: Image.asset("assets/images/home/carrot2.png"),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.1)
                          ),
                        ),
                        Positioned(
                            child:    Container(
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(8),
                                ),
                                color : Color.fromRGBO(200, 3, 51, 1),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,

                                children: <Widget>[
                                  Text('10% \nOff', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Segoe UI',
                                      fontSize: height*0.015,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),

                                ],
                              ),
                            )
                        ),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child:  Container(
                              width: width*0.15,
                              height: height*0.04,

                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child:
                              Center(
                                  child: Icon(Icons.add,size: height*0.025,)
                              ),

                            )
                        )
                      ]
                  ),
                  SizedBox(height: height*0.01,),
                  Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.017,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('4.4', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(25, 25, 25, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                      SizedBox(width: width*0.02,),
                      Icon(Icons.star,color: Colors.orange,size: height*0.02,),
                      SizedBox(width: width*0.02,),
                      Text('( 21,002)', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),)
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('₹189',
                        style: TextStyle(
                            fontSize: height*0.020,
                            fontFamily: 'regular'
                        ),
                      ),
                      SizedBox(width: width*0.02,),
                      Text('₹199',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: height*0.020,
                          fontFamily: 'regular',
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.01,),

                  Text('20k+ bought in past month', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.012,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)

                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                      children: [
                        Container(
                          height: height*0.23,
                          width: width*0.44,
                          child: Image.asset("assets/images/home/carrot2.png"),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.1)
                          ),
                        ),
                        Positioned(
                            child:    Container(
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(8),
                                ),
                                color : Color.fromRGBO(200, 3, 51, 1),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,

                                children: <Widget>[
                                  Text('10% \nOff', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Segoe UI',
                                      fontSize: height*0.015,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),

                                ],
                              ),
                            )
                        ),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child:  Container(
                              width: width*0.15,
                              height: height*0.04,

                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child:
                              Center(
                                  child: Icon(Icons.add,size: height*0.025,)
                              ),

                            )
                        )
                      ]
                  ),
                  SizedBox(height: height*0.01,),
                  Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.017,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('4.4', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(25, 25, 25, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                      SizedBox(width: width*0.02,),
                      Icon(Icons.star,color: Colors.orange,size: height*0.02,),
                      SizedBox(width: width*0.02,),
                      Text('( 21,002)', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),)
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('₹189',
                        style: TextStyle(
                            fontSize: height*0.020,
                            fontFamily: 'regular'
                        ),
                      ),
                      SizedBox(width: width*0.02,),
                      Text('₹199',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: height*0.020,
                          fontFamily: 'regular',
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.01,),

                  Text('20k+ bought in past month', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.012,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                      children: [
                        Container(
                          height: height*0.23,
                          width: width*0.44,
                          child: Image.asset("assets/images/home/carrot2.png"),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.1)
                          ),
                        ),
                        Positioned(
                            child:    Container(
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(8),
                                ),
                                color : Color.fromRGBO(200, 3, 51, 1),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,

                                children: <Widget>[
                                  Text('10% \nOff', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Segoe UI',
                                      fontSize: height*0.015,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),

                                ],
                              ),
                            )
                        ),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child:  Container(
                              width: width*0.15,
                              height: height*0.04,

                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child:
                              Center(
                                  child: Icon(Icons.add,size: height*0.025,)
                              ),

                            )
                        )
                      ]
                  ),
                  SizedBox(height: height*0.01,),
                  Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.017,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('4.4', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(25, 25, 25, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                      SizedBox(width: width*0.02,),
                      Icon(Icons.star,color: Colors.orange,size: height*0.02,),
                      SizedBox(width: width*0.02,),
                      Text('( 21,002)', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),)
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('₹189',
                        style: TextStyle(
                            fontSize: height*0.020,
                            fontFamily: 'regular'
                        ),
                      ),
                      SizedBox(width: width*0.02,),
                      Text('₹199',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: height*0.020,
                          fontFamily: 'regular',
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.01,),

                  Text('20k+ bought in past month', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.012,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)

                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                      children: [
                        Container(
                          height: height*0.23,
                          width: width*0.44,
                          child: Image.asset("assets/images/home/carrot2.png"),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.1)
                          ),
                        ),
                        Positioned(
                            child:    Container(
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(8),
                                ),
                                color : Color.fromRGBO(200, 3, 51, 1),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,

                                children: <Widget>[
                                  Text('10% \nOff', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Segoe UI',
                                      fontSize: height*0.015,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),

                                ],
                              ),
                            )
                        ),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child:  Container(
                              width: width*0.15,
                              height: height*0.04,

                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child:
                              Center(
                                  child: Icon(Icons.add,size: height*0.025,)
                              ),

                            )
                        )
                      ]
                  ),
                  SizedBox(height: height*0.01,),
                  Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.017,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('4.4', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(25, 25, 25, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                      SizedBox(width: width*0.02,),
                      Icon(Icons.star,color: Colors.orange,size: height*0.02,),
                      SizedBox(width: width*0.02,),
                      Text('( 21,002)', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),)
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('₹189',
                        style: TextStyle(
                            fontSize: height*0.020,
                            fontFamily: 'regular'
                        ),
                      ),
                      SizedBox(width: width*0.02,),
                      Text('₹199',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: height*0.020,
                          fontFamily: 'regular',
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.01,),

                  Text('20k+ bought in past month', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.012,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                      children: [
                        Container(
                          height: height*0.23,
                          width: width*0.44,
                          child: Image.asset("assets/images/home/carrot2.png"),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.1)
                          ),
                        ),
                        Positioned(
                            child:    Container(
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(8),
                                ),
                                color : Color.fromRGBO(200, 3, 51, 1),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,

                                children: <Widget>[
                                  Text('10% \nOff', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Segoe UI',
                                      fontSize: height*0.015,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),

                                ],
                              ),
                            )
                        ),
                        Positioned(
                            bottom: 10,
                            right: 10,
                            child:  Container(
                              width: width*0.15,
                              height: height*0.04,

                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child:
                              Center(
                                  child: Icon(Icons.add,size: height*0.025,)
                              ),

                            )
                        )
                      ]
                  ),
                  SizedBox(height: height*0.01,),
                  Text('Fresh organic Kashmir \napples', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.017,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('4.4', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(25, 25, 25, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                      SizedBox(width: width*0.02,),
                      Icon(Icons.star,color: Colors.orange,size: height*0.02,),
                      SizedBox(width: width*0.02,),
                      Text('( 21,002)', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontFamily: 'regular',
                          fontSize: height*0.014,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),)
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('₹189',
                        style: TextStyle(
                            fontSize: height*0.020,
                            fontFamily: 'regular'
                        ),
                      ),
                      SizedBox(width: width*0.02,),
                      Text('₹199',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: height*0.020,
                          fontFamily: 'regular',
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: height*0.01,),

                  Text('20k+ bought in past month', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(25, 25, 25, 1),
                      fontFamily: 'regular',
                      fontSize: height*0.012,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)

                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
  Widget _buildBrandsRelatedToSearch(BuildContext context,var height, var width)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: height*0.32,
        width: width,
        color: Color(0xFFBBDEFB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0,0),
              child: Text('Brands related to your search', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontFamily: 'bold',
                  fontSize: 14,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.1428571428571428
              ),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: height*0.22,
                        width: width*0.4,
                        child: Image.asset("assets/images/home/secondrefrig.png")
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: height*0.22,
                        width: width*0.4,
                        child: Image.asset("assets/images/home/secondrefrig.png")
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: height*0.22,
                        width: width*0.4,
                        child: Image.asset("assets/images/home/secondrefrig.png")
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: height*0.22,
                        width: width*0.4,
                        child: Image.asset("assets/images/home/secondrefrig.png")
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
 






}
