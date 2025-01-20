import 'package:flutter/material.dart';

import '../../utils/constants/appcolors.dart';

class Inventories extends StatelessWidget {
  const Inventories({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Container(
              width: size.width,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(20),
                         color: const Color.fromARGB(255, 242, 242, 242),),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(minTileHeight: 40,
                    leading: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.store, color: Colors.grey.shade700),
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          "My Stores",
                          style: TextStyle(
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: kgreencolor),
                          child: Center(
                              child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_rounded,
                      color: const Color.fromARGB(255, 147, 146, 146),
                      size: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      color: const Color.fromARGB(255, 199, 199, 199),
                    ),
                  ),
                  ListTile(minTileHeight: 40,
                    leading: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.support, color: Colors.grey.shade700),
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          "Support",
                          style: TextStyle(
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_rounded,
                      color: const Color.fromARGB(255, 147, 146, 146),
                      size: 18,
                    ),
                  ),
                  SizedBox(
                     height: 10,
                  ),
                ],
              ),
            );
  }
}