import 'package:flutter/material.dart';
import 'package:health_project/screens/profile_screen.dart';

import '../widgets/custom_list_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Health Care",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const ProfileScreen()));
                },
                leading: Icon(
                  Icons.person,
                  size: 24,
                  color: Colors.grey.shade800,
                ),
                title:  Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.settings,
                  size: 24,
                  color: Colors.grey.shade800,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                onTap: () {},
                leading:  Icon(
                  Icons.logout,
                  size: 24,
                  color: Colors.grey.shade800,
                ),
                title: Text(
                  "Sign out",
                  style: TextStyle(
                      color:Colors.grey.shade800,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: ListView(
          children:  [
            CustomListTile(
              imagePath: "assets/images/dentist.png",
              title: "Dentistry",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/dermatology.png",
              title: "Dermatology",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/ear.png",
              title: "Ear, nose and throat",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/gastroenterology.png",
              title: "Gastroenterology",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/surgery.png",
              title: "Surgery",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/hematology.png",
              title: "Hematology",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/hepatology.png",
              title: "Hepatology",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "",
              title: "Internal Medicine",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/neurology.png",
              title: "Neurology",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/obstetrics.png",
              title: "Obstetrics and Gynecology",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/ophthalmology.png",
              title: "Ophthalmology",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/orthopedics.png",
              title: "Orthopedics",
              onTap: () => {},
            ),
            CustomListTile(
              imagePath: "assets/images/pediatrics.png",
              title: "Pediatrics",
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
