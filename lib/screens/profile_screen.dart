import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = "Mohamed Ibrahim";
  String email = "Mohamed.Ibrahim@gmail.com";
  String phone = "+20123456789";
  String medicalHistory = "Lorem Ipsum";
  String bloodGroup = "A+";
  String birthDate = "23/3/1999";
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Personal Info",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/images/user.png"),
              ),
              SizedBox(height: 30),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Name"),
                subtitle: Text(name)
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text(email)
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Phone number"),
                subtitle: Text(phone)
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text("Medical History"),
                subtitle: Text(medicalHistory)
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text("Blood Group"),
                subtitle: Text(bloodGroup)
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("Birth Date"),
                subtitle: Text(birthDate)
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.person_pin),
                title: Text("Gender"),
                subtitle: Text(gender),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
