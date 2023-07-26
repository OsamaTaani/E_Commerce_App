import 'package:flutter/material.dart';

class Interface extends StatefulWidget {
  Interface({Key? key}) : super(key: key);

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  final String _profileImage = 'assets/images/Profile Image.png';

  void _changeProfilePicture() {
    // Implement profile picture change logic here
  }

  void _editProfile() {
    // Implement edit profile logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Profile"),
        ),
      ),
      body: ListView( // Wrap the Column with a ListView
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(_profileImage),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        color: Colors.deepOrange,
                      ),
                      child: IconButton(
                        onPressed: _changeProfilePicture,
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // TextButton(
              //   onPressed: _changeProfilePicture,
              //   child: Text(
              //     'Change Profile Picture',
              //     style: TextStyle(
              //       color: Colors.deepOrange,
              //     ),
              //   ),
              // ),
              SizedBox(height: 40),
              TextFormField(

                decoration: InputDecoration(
                  hintText: "Edit your full name",
                  labelText: "Full Name",
                  labelStyle: TextStyle(
                    color: Colors.deepOrange,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.deepOrange,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                // controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Edit your email",
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.deepOrange,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.deepOrange,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                // controller: _phoneController,
                decoration: InputDecoration(
                  hintText: "Edit your phone number",
                  labelText: "Phone Number",
                  labelStyle: TextStyle(
                    color: Colors.deepOrange,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(
                    Icons.phone_outlined,
                    color: Colors.deepOrange,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                // controller: _bioController,
                decoration: InputDecoration(
                  hintText: "Edit your bio",
                  labelText: "Bio",
                  labelStyle: TextStyle(
                    color: Colors.deepOrange,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(
                    Icons.info_outlined,
                    color: Colors.deepOrange,
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.deepOrangeAccent,
                  onPressed: _editProfile,
                  child: Text(
                    "Edit profile",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
