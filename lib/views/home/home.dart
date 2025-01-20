import 'package:flutter/material.dart';
import 'package:ui_task/utils/constants/appcolors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_task/views/home/inventories.dart';
import 'package:ui_task/views/home/preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xffbaefbc),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5),
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      //  color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/profile.png")),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Coffeestories",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
              SizedBox(
                height: 10,
              ),
              Text("mark.brock@icloud.com",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 11)),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "Edit profile",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Inventories",
                      style: TextStyle(fontSize: 11, color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            Inventories(),
             SizedBox(
                height: 20,
              ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Preferences",
                      style: TextStyle(fontSize: 11, color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Preferences()
            ],
          ),
        ),
      ),
    );
  }
}
