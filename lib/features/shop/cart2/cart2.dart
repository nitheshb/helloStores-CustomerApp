import 'package:cwt_ecommerce_app/home_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home2/home2.dart';

class Cart2 extends StatefulWidget
{
  @override
  State<Cart2> createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      // _showBottomSheet(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFCED1D5),

      appBar: PreferredSize(

        preferredSize: const Size.fromHeight(60),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(20), // Rounded bottom-left
            bottomRight: const Radius.circular(20),
          ),
          child: AppBar(

            backgroundColor: Colors.white,
            elevation: 8,
            titleSpacing: 0,
            leading: IconButton(
              icon: const Icon(Icons.chevron_left, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              "Your Cart",
              style: TextStyle(
                fontSize: height*0.02,
                fontFamily: 'bold',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

      ),
      body: Stack(
        children : [
          SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: height*0.065,
                  //color: Color(0XFF1B5E20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF388E3C),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 4, 10, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height*0.45,
                          width: width*0.13,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFF1B5E20)
                          ),
                          child: Center(
                            child: Text("₹ 72",style:
                            TextStyle(color: Colors.yellowAccent,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'bold'),),
                          ),
                        ),
                        Text("SAVINGS ON THIS ORDER WITH",style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontFamily: 'regular',
                            fontSize: height*0.015
                        ),),
                        Container(
                            height: height*0.5,
                            width: width*0.17,
                            child: Image.asset("assets/images/cart2/supersaver.jpeg")
                        )


                      ],


                    ),
                  ),
                ),


                SizedBox(height: height*0.014,),
                Container(
                  height: height*0.065,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        //height: height*0.5,
                          width: width*0.1,
                          child: Image.asset("assets/images/cart2/discount.jpeg")
                      ),
                      SizedBox(width: width*0.01,),
                      Text("View Coupons & Offers",style: TextStyle(
                          fontFamily: 'bold',
                          fontWeight: FontWeight.bold
                      ),),
                      Spacer(),
                      Icon(Icons.chevron_right,size: height*0.02,)

                    ],


                  ),
                ),
                SizedBox(height: height*0.014,),
                Container(
                  height: height*0.31,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Row(
                            children: [
                              Container(
                                  width: width*0.1,
                                  height: height*0.05,
                                  child: Image.asset("assets/images/cart2/delivery.jpeg")
                              ),
                              SizedBox(width: width*0.02,),
                              Text("Delivery in 10 mins",style: TextStyle(
                                  fontFamily: 'bold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: height*0.02
                              ),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.003,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 13,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/cart2/curd.jpeg",
                              height: height*0.04,
                              width: width*0.1,),
                            SizedBox(width: width*0.03,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Heritage Total CUP &\n Curd",style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                    fontSize: height * 0.014,
                                    fontFamily: 'bold'
                                ),),
                                Text("1 kg",style: TextStyle(fontSize: height*0.013),)
                              ],
                            ),
                            Spacer(),

                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: height*0.04,
                                width: width*0.18,
                                decoration: BoxDecoration(
                                    color: Color(0XFFFCE4EC),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.remove,color: Colors.pink,size: height*0.025,),
                                      Text("1"),
                                      Icon(Icons.add,color: Colors.pink,size: height*0.025,)
                                    ],
                                  ),
                                ),

                              ),
                            ),
                         
                            Column(
                              children: [
                                Text("₹107",style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'bold'
                                ),),
                                Text("₹110",style: TextStyle(
                                    fontSize: height*0.013,
                                    decoration: TextDecoration.lineThrough
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 13,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/cart2/sunflower.jpeg",
                              height: height*0.04,
                              width: width*0.1,),
                            SizedBox(width: width*0.03,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("GoldDrop Cooking \n Oil",style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                    fontSize: height * 0.014,
                                    fontFamily: 'bold'
                                ),),
                                Text("1 kg",style: TextStyle(fontSize: height*0.013),)
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: height*0.04,
                                width: width*0.18,
                                decoration: BoxDecoration(
                                    color: Color(0XFFFCE4EC),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.remove,color: Colors.pink,size: height*0.025,),
                                      Text("1"),
                                      Icon(Icons.add,color: Colors.pink,size: height*0.025,)
                                    ],
                                  ),
                                ),

                              ),
                            ),

                            Column(
                              children: [
                                Text("₹144",style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'bold'
                                ),),
                                Text("₹185",style: TextStyle(
                                    fontSize: height*0.013,
                                    decoration: TextDecoration.lineThrough
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          15, // Number of dashes
                              (index) => Text(
                            "_ ",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Missed Something ?",style: TextStyle(
                                fontFamily: 'bold'
                            ),),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add,color: Colors.white,size: height*0.02,),
                                    SizedBox(width: width*0.01,),
                                    Text("Add More Items",style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'regular',
                                        fontSize: height*0.012
                                    ),)
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(height: height*0.014,),
                Text("You might also like ",style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'bold',
                    fontSize: height*0.02
                ),),
                SizedBox(height: height*0.01,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: height*0.34,
                        width: width*0.33,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    color: Colors.red,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                      child: Text("₹42",style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'bold'
                                      ),),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.yellow,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(20,4,10,4),

                                      child: Row(
                                        children: [
                                          Text("MRP ",style: TextStyle(
                                              color: Colors.black.withOpacity(0.5),
                                              fontSize: height*0.013
                                          ),),
                                          Text("₹55",style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'bold',
                                              decoration: TextDecoration.lineThrough
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),

                            ),
                            SizedBox(height: height*0.002,),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: height*0.1,
                                child: Center(child: Image.asset("assets/images/cart2/salt.jpeg"))
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/home2/timer 4.png",
                                    width: 10, height: 10, // Adjust size if needed
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "16 MINS",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'regular',
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("Tata Salt Lite ",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.016
                              ),),
                            ),
                            SizedBox(height: height*0.004,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("1kg",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.013
                              ),),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.pinkAccent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 3,8,3),
                                  child: Text("Add To Cart",style: TextStyle(
                                      color: Colors.pinkAccent
                                  ),),
                                ),
                              ),
                            )



                          ],
                        ),
                      ),
                      SizedBox(width: width*0.025,),
                      Container(
                        height: height*0.34,
                        width: width*0.33,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    color: Colors.red,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                      child: Text("₹42",style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'bold'
                                      ),),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.yellow,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(20,4,10,4),

                                      child: Row(
                                        children: [
                                          Text("MRP ",style: TextStyle(
                                              color: Colors.black.withOpacity(0.5),
                                              fontSize: height*0.013
                                          ),),
                                          Text("₹55",style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'bold',
                                              decoration: TextDecoration.lineThrough
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),

                            ),
                            SizedBox(height: height*0.002,),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: height*0.1,
                                child: Center(child: Image.asset("assets/images/cart2/salt.jpeg"))
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/home2/timer 4.png",
                                    width: 10, height: 10, // Adjust size if needed
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "16 MINS",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'regular',
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("Tata Salt Lite ",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.016
                              ),),
                            ),
                            SizedBox(height: height*0.004,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("1kg",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.013
                              ),),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.pinkAccent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 3,8,3),
                                  child: Text("Add To Cart",style: TextStyle(
                                      color: Colors.pinkAccent
                                  ),),
                                ),
                              ),
                            )



                          ],
                        ),
                      ),
                      SizedBox(width: width*0.025,),
                      Container(
                        height: height*0.34,
                        width: width*0.33,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    color: Colors.red,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                      child: Text("₹42",style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'bold'
                                      ),),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.yellow,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(20,4,10,4),

                                      child: Row(
                                        children: [
                                          Text("MRP ",style: TextStyle(
                                              color: Colors.black.withOpacity(0.5),
                                              fontSize: height*0.013
                                          ),),
                                          Text("₹55",style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'bold',
                                              decoration: TextDecoration.lineThrough
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),

                            ),
                            SizedBox(height: height*0.002,),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: height*0.1,
                                child: Center(child: Image.asset("assets/images/cart2/salt.jpeg"))
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/home2/timer 4.png",
                                    width: 10, height: 10, // Adjust size if needed
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "16 MINS",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'regular',
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("Tata Salt Lite ",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.016
                              ),),
                            ),
                            SizedBox(height: height*0.004,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("1kg",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.013
                              ),),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.pinkAccent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 3,8,3),
                                  child: Text("Add To Cart",style: TextStyle(
                                      color: Colors.pinkAccent
                                  ),),
                                ),
                              ),
                            )



                          ],
                        ),
                      ),
                      SizedBox(width: width*0.025,),
                      Container(
                        height: height*0.34,
                        width: width*0.33,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    color: Colors.red,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                      child: Text("₹42",style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'bold'
                                      ),),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.yellow,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(20,4,10,4),

                                      child: Row(
                                        children: [
                                          Text("MRP ",style: TextStyle(
                                              color: Colors.black.withOpacity(0.5),
                                              fontSize: height*0.013
                                          ),),
                                          Text("₹55",style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'bold',
                                              decoration: TextDecoration.lineThrough
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),

                            ),
                            SizedBox(height: height*0.002,),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: height*0.1,
                                child: Center(child: Image.asset("assets/images/cart2/salt.jpeg"))
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/home2/timer 4.png",
                                    width: 10, height: 10, // Adjust size if needed
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "16 MINS",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'regular',
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("Tata Salt Lite ",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.016
                              ),),
                            ),
                            SizedBox(height: height*0.004,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("1kg",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.013
                              ),),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.pinkAccent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 3,8,3),
                                  child: Text("Add To Cart",style: TextStyle(
                                      color: Colors.pinkAccent
                                  ),),
                                ),
                              ),
                            )



                          ],
                        ),
                      ),
                      SizedBox(width: width*0.025,),
                      Container(
                        height: height*0.34,
                        width: width*0.33,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    color: Colors.red,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(10,4,10,4),
                                      child: Text("₹42",style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'bold'
                                      ),),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.yellow,
                                    child:Padding(
                                      padding: const EdgeInsets.fromLTRB(20,4,10,4),

                                      child: Row(
                                        children: [
                                          Text("MRP ",style: TextStyle(
                                              color: Colors.black.withOpacity(0.5),
                                              fontSize: height*0.013
                                          ),),
                                          Text("₹55",style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'bold',
                                              decoration: TextDecoration.lineThrough
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),


                                ],
                              ),

                            ),
                            SizedBox(height: height*0.002,),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: height*0.1,
                                child: Center(child: Image.asset("assets/images/cart2/salt.jpeg"))
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/home2/timer 4.png",
                                    width: 10, height: 10, // Adjust size if needed
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "16 MINS",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'regular',
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("Tata Salt Lite ",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.016
                              ),),
                            ),
                            SizedBox(height: height*0.004,),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text("1kg",style: TextStyle(
                                  fontFamily: 'regular',
                                  fontSize:  height*0.013
                              ),),
                            ),
                            SizedBox(height: height*0.01,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.pinkAccent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 3,8,3),
                                  child: Text("Add To Cart",style: TextStyle(
                                      color: Colors.pinkAccent
                                  ),),
                                ),
                              ),
                            )



                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*0.01,),
                Container(
                  height: height*0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Ordering for someone else",style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'bold',
                            fontSize: height*0.016
                        ),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.pinkAccent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 3,8,3),
                            child: Text("Add Details",style: TextStyle(
                                fontFamily: 'regular',
                                color: Colors.pinkAccent
                            ),),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                SizedBox(height: height*0.01,),
                Container(
                  width: width,
                  height: height*0.38,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                        child: Row(
                          children: [
                            Icon(Icons.phone_android),
                            SizedBox(width: width*0.02,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Delivert Partner Tip",style: TextStyle(
                                    fontFamily: 'bold'
                                ),),
                                Text("This amount goes to your delivery partner",style: TextStyle(
                                    fontFamily: 'regular',
                                    fontSize: height*0.013
                                ),)
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                      ),
                      Divider(color: Colors.black.withOpacity(0.2),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Row(
                          children: [
                            Icon(Icons.message_outlined),
                            SizedBox(width: width*0.02,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Delivery Instructions",style: TextStyle(
                                    fontFamily: 'bold'
                                ),),
                                Text("Delivery Partners will be notified",style: TextStyle(
                                    fontFamily: 'regular',
                                    fontSize: height*0.013
                                ),)
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                      ),
                      Divider(color: Colors.black.withOpacity(0.2),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          children: [
                            Icon(Icons.phone_android),
                            SizedBox(width: width*0.02,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("To pay",style: TextStyle(
                                    fontFamily: 'bold'
                                ),),
                                Text("Incl. all taxes and charges",style: TextStyle(
                                    fontFamily: 'regular',
                                    fontSize: height*0.013
                                ),)
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("₹339",style: TextStyle(
                                        color: Colors.black.withOpacity(0.3),
                                        decoration: TextDecoration.lineThrough
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text("₹268",style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'bold',
                                          fontSize: height*0.017
                                      ),),
                                    ),

                                  ],
                                ),
                                Text("Saving ₹73",style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'bold'
                                ),),
                              ],
                            ),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                      ),
                      Divider(color: Colors.black.withOpacity(0.2),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
                        child: Row(
                          children: [
                            Icon(Icons.bike_scooter),
                            SizedBox(width: width*0.02,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Delivery Partners Safety",style: TextStyle(
                                    fontFamily: 'bold'
                                ),),
                                Text("Learn more about how we enusre their safety",style: TextStyle(
                                    fontFamily: 'regular',
                                    fontSize: height*0.013
                                ),)
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: height*0.5,),



              ],
            ),
          ),
        ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:
            Container(
                height: height*0.23,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.home),
                              )
                          ),
                          SizedBox(width: width*0.05,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Delivering to Home",style: TextStyle(
                                      fontFamily: 'bold',
                                      fontSize: height*0.02
                                  ),),
                                  Icon(Icons.keyboard_arrow_down_rounded)
                                ],
                              ),
                              Text("nizam boys hostel, LB staduim road,....",style: TextStyle(
                                  fontFamily: 'regular'
                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(7,0,7,0),
                      child: Container(
                        width: width,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFFFE0B2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("High demand! Free Cash on hold",style: TextStyle(
                                fontFamily: 'bold',
                                color: Color(0XFFFF6E40),
                                fontSize: height*0.015
                            ),),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("To Pay",style: TextStyle(
                                color: Colors.black.withOpacity(0.8)
                            ),),
                            Text("307.28",style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'bold'
                            ),),

                          ],
                        ),
                        Container(
                          width: width*0.3,
                          height: height*0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:  Color(0xFFCED1D5),
                          ),

                          child:Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 8,12, 8),
                              child: Text("Pay Online",style: TextStyle(
                                  fontFamily: 'bold'
                              ),),
                            ),
                          ),
                        ),
                        Container(
                          width: width*0.3,
                          height: height*0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pinkAccent,
                          ),

                          child:Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8,12, 5),
                            child: Column(
                              children: [
                                Text("Pay UPI/Cash",style: TextStyle(
                                    fontFamily: 'bold',
                                    color: Colors.white,
                                    fontSize: height*0.014
                                ),),
                                Text("On Delivery",style: TextStyle(
                                    fontFamily: 'regular',
                                    color: Colors.white,
                                    fontSize: height*0.012
                                ),),

                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
            )
          ),
        ],
      ),
    );

  }
}

void _showBottomSheet(BuildContext context) {
  var height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    showDragHandle: false,
      isDismissible: false,
      enableDrag: false,

    builder: (context) {
      return Container(
          height: height*0.23,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.home),
                        )
                    ),
                    SizedBox(width: width*0.05,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Delivering to Home",style: TextStyle(
                                fontFamily: 'bold',
                                fontSize: height*0.02
                            ),),
                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                        Text("nizam boys hostel, LB staduim road,....",style: TextStyle(
                            fontFamily: 'regular'
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7,0,7,0),
                child: Container(
                  width: width,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFFFE0B2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("High demand! Free Cash on hold",style: TextStyle(
                          fontFamily: 'bold',
                          color: Color(0XFFFF6E40),
                          fontSize: height*0.015
                      ),),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("To Pay",style: TextStyle(
                          color: Colors.black.withOpacity(0.8)
                      ),),
                      Text("307.28",style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'bold'
                      ),),

                    ],
                  ),
                  Container(
                    width: width*0.3,
                    height: height*0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  Color(0xFFCED1D5),
                    ),

                    child:Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 8,12, 8),
                        child: Text("Pay Online",style: TextStyle(
                            fontFamily: 'bold'
                        ),),
                      ),
                    ),
                  ),
                  Container(
                    width: width*0.3,
                    height: height*0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pinkAccent,
                    ),

                    child:Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8,12, 5),
                      child: Column(
                        children: [
                          Text("Pay UPI/Cash",style: TextStyle(
                              fontFamily: 'bold',
                              color: Colors.white,
                              fontSize: height*0.014
                          ),),
                          Text("On Delivery",style: TextStyle(
                              fontFamily: 'regular',
                              color: Colors.white,
                              fontSize: height*0.012
                          ),),

                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
      );
    },
  );
}