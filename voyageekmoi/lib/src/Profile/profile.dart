import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:voyageekmoi/constant.dart';

class ProfileScreen extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(LineAwesomeIcons.angle_left_solid), color: Colors.black,),
        title: const Text(
          "Profile", 
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        
        children:[
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage(voyagEkMoiProfile))
                    )
                  ),
                ],
              )
            ),
          ),

          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name:"),
                    Text("Surname:"),
                    Text("Username:")
                  ],
                ),

                SizedBox(width: 30),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Julie"),
                    Text("Ane"),
                    Text("Julie_A")
                  ],
                ),
                
                ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(255, 192, 0, 1), width: 2.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Card Balance", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ],
                    ),
              
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("Rs 7750", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              
                                SizedBox(
                                  width: 45,
                                ),
              
                                ElevatedButton(onPressed: (){}, child: Text("Top Up", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 192, 0, 1))),)
                            ],
                            )
                          ],
                        ),
              
                        Column(
                          children: [
                            Row(
                              children: [
                                TextButton(onPressed: (){}, child: Text("Top Up", style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFFC000)),))
                              ],
                            )
                          ],
                          )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today's Bookings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
              
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(255, 192, 0, 1), width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
              
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(LineAwesomeIcons.car_solid),
              
                            Column(
                              children: [
                                Text("Journey Details",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
              
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text("Ebene -> reduit")
                                  ],
                                )
                              ],
                            ),
                         
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("27 September, 2024",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                                Text("11:00 am"),
                              ],
                            )
                          ],
                        ),
                      
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){}, child: Text("Driver's Location", style: TextStyle(color: Colors.black),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 192, 0, 1))),),
                            
                            SizedBox(width: 18,),

                            ElevatedButton(onPressed: (){}, child: Text("Current Location", style: TextStyle(color: Colors.black),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 192, 0, 1))),),
                            ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: (){}, child: Text("Schedule Bookings",  style: TextStyle(color: Colors.black)), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 192, 0, 1))),),
            ),
          )
        ]
      ),
      
    );
  }
}