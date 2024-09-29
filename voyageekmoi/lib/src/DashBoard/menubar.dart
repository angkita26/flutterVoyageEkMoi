import 'package:flutter/material.dart';
import 'package:voyageekmoi/src/DashBoard/sections.dart';

class MenuNavBar extends StatelessWidget {
  const MenuNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final list = SectionModel.list;
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "VoyageEkMoi",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
              ),
              accountEmail: Text(
                "Safer Drive",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15)
                ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 192, 0, 1),
              ),
            ),
           
           const SizedBox(height: 10),
           
            ...list.map((section) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 192, 0, 1).withOpacity(0.2), // Background color with opacity
                      borderRadius: BorderRadius.circular(100), // Rounded corners
                    ),
                child: ListTile(
                      leading: Icon(section.icon, size: 50, color: Color.fromRGBO(255, 192, 0, 1),),
                      title: Text(section.title, style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.black, fontStyle: FontStyle.italic,), textAlign: TextAlign.center,),
                      onTap: section.onPress,
                    ),
              ),
            )),
      
            const SizedBox(height: 10,)    
          ],
        ),
      ),
    );
  }
}
