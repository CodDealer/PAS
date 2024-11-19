import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pas1_mobilee_11pplg2_24/Menu/Favourite.dart';
import 'package:pas1_mobilee_11pplg2_24/Menu/Home.dart';
import 'package:pas1_mobilee_11pplg2_24/Widget/myText.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  myText(
                    text: "John Doe",
                    margin: 5,
                    textAlign: Alignment.center,
                    fontSize: 20,
                    isBold: true,
                    padding: EdgeInsets.all(16.0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.home, color: Colors.black),
                        title: Text(
                          'Home',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
                        onTap: () {
                          Get.to(Home()); // Navigate to HomePage
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.star_rate, color: Colors.black),
                        title: Text(
                          'Favourite',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
                        onTap: () {
                          Get.to(Favorites()); // Navigate to DownloadPage
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person, color: Colors.black),
                        title: Text(
                          'Profile',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.black),
                        onTap: () {
                          Get.to(Profile()); // Navigate to ProfilePage
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
