import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/utils/constants/appcolors.dart';

import '../../core/controller/preference_controller.dart';



class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    final PreferencesController controller = Get.put(PreferencesController());
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(20),
        color: ktilecolor
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 10),
          ListTile(minTileHeight: 40,
            leading: Container(
              decoration: BoxDecoration(
                color: kwhitecolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(CupertinoIcons.bell, color: Colors.grey.shade700),
              ),
            ),
            title: Text(
              "Push notifications",
              style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            trailing: Obx(
              () => Switch(
                value: controller.isNotificationEnabled1.value,
                onChanged: (bool newValue) {
                  controller.toggleNotification1(newValue);
                },
                activeColor: Color(0xff277a46),
                activeTrackColor:Color(0xff277a46) ,
                focusColor: Color(0xff277a46),
inactiveTrackColor: Colors.grey.shade500,
                thumbColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Color.fromARGB(255, 199, 199, 199),
            ),
          ),
          ListTile(minTileHeight: 40,
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(CupertinoIcons.rectangle_stack_person_crop_fill, color: Colors.grey.shade700),
              )
            ),
            title: Row(
              children: [
                Text(
                  "Face ID",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
           trailing: Obx(
              () => Switch(
                value: controller.isNotificationEnabled2.value,
                onChanged: (bool newValue) {
                  controller.toggleNotification2(newValue);
                },
                activeColor: Color(0xff277a46),
                activeTrackColor:Color(0xff277a46) ,
                focusColor: Color(0xff277a46),
inactiveTrackColor: Colors.grey.shade500,
                thumbColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ),
             const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Color.fromARGB(255, 199, 199, 199),
            ),
          ),
 ListTile(minTileHeight: 40,
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.dialpad_rounded, color: Colors.grey.shade700),
              )
            ),
            title: Row(
              children: [
                Text(
                  "pin code",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
           trailing:  Icon(
                      Icons.arrow_forward_rounded,
                      color: const Color.fromARGB(255, 147, 146, 146),
                      size: 18,
                    ),
          ),
             const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Color.fromARGB(255, 199, 199, 199),
            ),
          ),
 ListTile(minTileHeight: 40,
            leading: Container(
              decoration: BoxDecoration(
                color: Color(0xfffeeeee),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.dialpad_rounded, color: kredcolor),
              )
            ),
            title: Row(
              children: [
                Text(
                  "Logout",
                  style: TextStyle(
                    color: kredcolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          
          ),
                    const SizedBox(height: 10),
      ],
      ),
    );
  }
}
