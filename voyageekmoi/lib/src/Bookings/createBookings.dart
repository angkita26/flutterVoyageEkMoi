// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class CreateBookings extends StatefulWidget{

  @override
  State<CreateBookings> createState() => _CreateBookingsState();
}

class _CreateBookingsState extends State<CreateBookings> {
  var items = [
    "One Way",
    "Two Way"
  ];

  var items1 = [
    "Honda",
    "Toyota",
    "Suziki",
    "Mazda",
    "Nissan"
  ];

  String dropdownvalue = "One Way";
  String dropdownvalue1 = "Honda";

  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Create new booking", style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: (){}, icon: Icon(LineAwesomeIcons.angle_left_solid)),
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(child: Icon(LineAwesomeIcons.car_solid, size: 100,))
                    ],
                  ),
                ),
          
                Column(
                  children: [
          
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(255, 192, 0, 1), width: 2.0)),
                        hintText: "Pickup Location"
                      ),
                    ),
          
                    SizedBox(height: 10),
          
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(255, 192, 0, 1), width: 2.0)),
                        hintText: "Destination"
                      ),
                    ),
          
                    SizedBox(height: 10),
          
                    // TextField(
                    //   decoration: InputDecoration(
                    //     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(255, 192, 0, 1), width: 2.0)),
                    //     hintText: "Pickup Time"
                    //   ),
                    // ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color.fromRGBO(255, 192, 0, 1))
                      ),
                      child: Row(
                        children: [
                          ElevatedButton(
                          onPressed: _selectTime,
                          child: Text('SELECT TIME', style: TextStyle(color: Colors.black)),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Selected time: ${_time.format(context)}',
                        ),
                        ],
                      ),
                    ),
                    
          
                    SizedBox(height: 10),
          
                    TextField(
                      controller: datePickerController,
                      readOnly: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(255, 192, 0, 1), width: 2.0)),
                        hintText: "Pickup Date"
                      ),
                      onTap: () => dateFunction(context: context),
                    ),
          
                    SizedBox(height: 10),
          
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(255, 192, 0, 1), width: 2.0)),
                        hintText: "Number of passengers"
                      ),
                    ),
          
                    SizedBox(height: 10),
          
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color.fromRGBO(255, 192, 0, 1))
                      ),
                      child: Center(
                        child: DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items){
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                        
                          onChanged: (String? newValue){
                            setState((){
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
          
                    SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color.fromRGBO(255, 192, 0, 1))
                      ),
                      child: Center(
                        child: DropdownButton(
                          value: dropdownvalue1,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items1.map((String items){
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                        
                          onChanged: (String? newValue){
                            setState((){
                              dropdownvalue1 = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
          
                  ],
                ),
          
              ],
            )
          ),
        ),
      ),
    );
  }

  TextEditingController datePickerController = TextEditingController();

  dateFunction({required BuildContext context}) async{
    DateTime? pickedDate = await showDatePicker(
      context: context,
      lastDate: DateTime.now(),
      firstDate: DateTime(2015),
      initialDate: DateTime.now(),
    );
    if (pickedDate == null) return;
    datePickerController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
  }

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }
}