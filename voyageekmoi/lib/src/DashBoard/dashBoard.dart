import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:voyageekmoi/src/DashBoard/menubar.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const MenuNavBar(),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Welcome Back", style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.black), // Change the icon color here
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Opens the drawer when pressed
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      
                Container(
                  child: Column(
                    children: [
                      
                      Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                
                      child: Column(
                        children: [
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:[
                              Text("Current Bookings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],
                          ),
      
                          SizedBox(height: 10),
      
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
                          
                          SizedBox(height: 10,),
                          
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
      
                          SizedBox(height: 10,),
      
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
      
                          SizedBox(height: 10,),
      
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
                        ],
                      ),
                    ),
                   
                      SizedBox(height: 10),
      
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          children: [
      
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Today's bookings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              ],
                            ),
      
                            SizedBox(height: 10),
      
                            Row(
                              children: [
                                Icon(LineAwesomeIcons.car_solid),
                                Column(
                                  children: [
                                    Text(
                                      "Journey Details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
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
                                    Text(
                                      "27 September, 2024",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                    Text("11:00 am"),
                                  ],
                                )
                              ],
                            ),
      
                            Row(
                              children: [
                                ElevatedButton(onPressed: (){}, child: Text("Driver's Location", style: TextStyle(color: Colors.black),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 192, 0, 1),)),  ),
      
                                SizedBox(width: 15,),
      
                                ElevatedButton(onPressed: (){}, child: Text("Current Location", style: TextStyle(color: Colors.black)), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 192, 0, 1))),),
      
                              ],
                            ),
      
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star_border),
                                  SizedBox(width: 10),
                                  Text("Review Journey")
                                ]
                                ),
                          ],
                        ),
                      ),
                   
                      SizedBox(height: 10),
      
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          children: [
      
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Points accumulated", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              ],
                            ),
      
                            SizedBox(height: 10),
      
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("25", style: TextStyle(color: Color.fromRGBO(255, 192, 0, 1), fontWeight: FontWeight.bold, fontSize: 35),),
                              ],
                            ),
      
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("5 points per booking", style: TextStyle(color: Colors.grey))
                              ],
                            ),
      
                          ],
                        ),
                      ),
                    ],
                  ),
                )
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
