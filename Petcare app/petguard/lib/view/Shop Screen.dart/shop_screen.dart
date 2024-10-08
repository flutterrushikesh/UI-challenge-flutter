import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:petguard/controller/shop_controller.dart';
import 'package:petguard/view/Shop%20Screen.dart/Widgets/my_appbar.dart';

class ShopScreen extends StatelessWidget {
  ///REGISTER A CONTROLLER

  final ShopController putController = Get.put(ShopController());

  ///FIND A REGISTERED CONTROLLER
  final ShopController findController = Get.find<ShopController>();
  ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURE SCREEN WIDTH & STORED IN SCREENHEIGHT VARIABLE.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURE SCREEN WIDTH & STORED IN SCREENWIDTH VARIABLE.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: Column(
        children: [
          ///APPBAR OF SCREEN.
          const MyAppbar(),
          SizedBox(
            height: screenHeight * 0.023,
          ),
          Expanded(
            child: GridView.custom(
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                pattern: [
                  WovenGridTile(
                    screenWidth * 0.0022,
                    crossAxisRatio: 0.9,
                  ),
                  WovenGridTile(
                    screenWidth * 0.0026,
                    crossAxisRatio: 0.9,
                  ),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: findController.listOfItems.length,
                (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          findController.listOfItems[index].imagePath,
                        ),
                        Positioned(
                          top: screenHeight * 0.01,
                          left: screenWidth * -0.05,
                          child: Container(
                            width: screenWidth * 0.25,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: screenHeight * 0.007,
                              bottom: screenHeight * 0.007,
                            ),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(245, 245, 247, 1),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            child: Text(
                              findController.listOfItems[index].itemType,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                fontSize: screenWidth * 0.031,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
