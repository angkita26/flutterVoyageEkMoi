import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class PreviousBookings extends StatelessWidget{

  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Welcome Back", style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: (){}, icon: Icon(LineAwesomeIcons.angle_left_solid)),
        ),

        body: Container(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(LineAwesomeIcons.car_solid),
                        Column(
                          children: [
                            Text(
                              "Journey Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
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
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text("11:00 am"),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(LineAwesomeIcons.car_solid),
                        Column(
                          children: [
                            Text(
                              "Journey Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
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
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text("11:00 am"),
                          ],
                        )
                      ],
                    ),
                 
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(LineAwesomeIcons.car_solid),
                        Column(
                          children: [
                            Text(
                              "Journey Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
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
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text("11:00 am"),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(LineAwesomeIcons.car_solid),
                        Column(
                          children: [
                            Text(
                              "Journey Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
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
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text("11:00 am"),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(LineAwesomeIcons.car_solid),
                        Column(
                          children: [
                            Text(
                              "Journey Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
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
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text("11:00 am"),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(LineAwesomeIcons.car_solid),
                        Column(
                          children: [
                            Text(
                              "Journey Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
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
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text("11:00 am"),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(LineAwesomeIcons.car_solid),
                        Column(
                          children: [
                            Text(
                              "Journey Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
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
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text("11:00 am"),
                          ],
                        )
                      ],
                    ),
                 ],
              ),
            )
          ),
        )
      )
    );
  }

}