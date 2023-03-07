import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController(text: "Mohamed Ibrahim");
  bool nameEdit = false;
  TextEditingController emailController = TextEditingController(text: "Mohamed.Ibrahim@gmail.com");
  bool emailEdit = false;
  TextEditingController phoneController = TextEditingController(text: "+20123456789");
  bool phoneEdit = false;
  TextEditingController medicalHistoryController = TextEditingController(text: "Lorem Ipsum");
  bool medicalHistoryEdit = false;
  TextEditingController bloodGroupController = TextEditingController(text: "A+");
  bool bloodGroupEdit = false;
  TextEditingController birthDateController = TextEditingController(text: "23/7/1999");
  bool birthDateEdit = false;

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
                trailing: IconButton(onPressed: (){
                  setState(() {
                    nameEdit=true;
                  });
                }, icon: Icon(Icons.edit)),
                subtitle: TextFormField(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600
                  ),
                  controller: nameController,
                  enabled: nameEdit,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero
                  ),
                ),
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                trailing: IconButton(onPressed: (){
                  setState(() {
                    emailEdit=true;
                  });
                }, icon: Icon(Icons.edit)),
                subtitle: TextFormField(
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600
                  ),
                  controller: emailController,
                  enabled: emailEdit,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero
                  ),
                ),
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Phone number"),
                trailing: IconButton(onPressed: (){
                  setState(() {
                    phoneEdit=true;
                  });
                }, icon: Icon(Icons.edit)),
                subtitle: TextFormField(
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600
                  ),
                  controller: phoneController,
                  enabled: phoneEdit,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero
                  ),
                ),
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text("Medical History"),
                trailing: IconButton(onPressed: (){
                  setState(() {
                    medicalHistoryEdit=true;
                  });
                }, icon: Icon(Icons.edit)),
                subtitle: TextFormField(
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600
                  ),
                  controller: medicalHistoryController,
                  enabled: medicalHistoryEdit,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero
                  ),
                ),
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text("Blood Group"),
                trailing: IconButton(onPressed: (){
                  setState(() {
                    bloodGroupEdit=true;
                  });
                }, icon: Icon(Icons.edit)),
                subtitle:TextFormField(
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600
                  ),
                  controller: bloodGroupController,
                  enabled: bloodGroupEdit,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero
                  ),
                ),
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("Birth Date"),
                trailing: IconButton(onPressed: (){
                  setState(() {
                    birthDateEdit=true;
                  });
                }, icon: Icon(Icons.edit)),
                subtitle: TextFormField(
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600
                  ),
                  controller: birthDateController,
                  enabled: birthDateEdit,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero
                  ),
                ),
              ),
              SizedBox(height: 12),
              ListTile(
                leading: Icon(Icons.person_pin),
                title: Text("Gender"),
                subtitle: Text("Male"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
