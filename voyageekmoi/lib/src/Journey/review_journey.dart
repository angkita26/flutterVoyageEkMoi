import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:voyageekmoi/constant.dart';

class ReviewScreen extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(LineAwesomeIcons.angle_left_solid), color: Colors.black,),
        title: const Text(
          "Review Journey", 
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

          Text("Destination", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),

          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("From:"),
                    Text("To:"),
                    Text("Time Taken:")
                  ],
                ),

                SizedBox(width: 30),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(LineAwesomeIcons.star, size: 40,),
                  Icon(LineAwesomeIcons.star, size: 40,),
                  Icon(LineAwesomeIcons.star, size: 40,),
                  Icon(LineAwesomeIcons.star, size: 40,),
                  Icon(LineAwesomeIcons.star, size: 40,)
                ],
              ),
            )
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
              border:
                Border.all(color: Color.fromRGBO(255, 192, 0, 1), width: 2.0),
                borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                label: Text("Write a thank you note"),
              ),
            ),
                    ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: (){}, child: Text("Submit",  style: TextStyle(color: Colors.black)), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 192, 0, 1))),),
            ),
          )
        ]
      ),
      
    );
  }
}