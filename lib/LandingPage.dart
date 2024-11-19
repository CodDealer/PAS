import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobilee_11pplg2_24/Controller/DashbordController.dart';
import 'package:pas1_mobilee_11pplg2_24/Menu/Favourite.dart';
import 'package:pas1_mobilee_11pplg2_24/Menu/Home.dart';
import 'package:pas1_mobilee_11pplg2_24/Menu/Profile.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    final UtamaController controller = Get.put(UtamaController());
    final List<Widget> pages = [
      Home(),
      Favorites(),
      Profile(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Page'),
        centerTitle: true,
      ),
      body: Obx(() => pages[controller.selectedindex.value]),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedindex.value,
          onTap: controller.changeMenu,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, color: Colors.black),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star, color: Colors.black),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
