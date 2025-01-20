import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/views/home/home.dart';

import '../../../core/controller/homecontroller.dart';

class BottomScreen extends StatelessWidget {
  BottomScreen({super.key});
  final HomeScreenController controller = Get.put(HomeScreenController());
  final List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        bottomNavigationBar:  Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,),
          child: SizedBox(height: 60,
            child: BottomNavigationBar(
              
              elevation: 0,
                  currentIndex: 0,
                  unselectedFontSize: 0,selectedFontSize: 0,
                  onTap: (index) => controller.changeTab(index),
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.black,
                  backgroundColor: Colors.white,
                  unselectedLabelStyle: TextStyle(fontSize: 0),
                  selectedLabelStyle: TextStyle(fontSize: 0),
            
                  items: const [
                    BottomNavigationBarItem(
            
                      icon: Image(
                        image: AssetImage("assets/images/home.png"),
                        height: 22,
                        
                      ),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: Image(
                          image: AssetImage("assets/images/undo.png"), height: 22),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person_alt_circle_fill,size: 24,color: Color(0xff277a46),),
                      label: "",
                    ),
                  ],
                ),
          ),
        ),
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //     toolbarHeight: 15,
        //     backgroundColor: Colors.white,
        //     surfaceTintColor: Colors.transparent),
        body: SafeArea(
          bottom: false,
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Obx(() => _screens[controller.selectedIndex.value]),
          ),
        ));
  }
}
