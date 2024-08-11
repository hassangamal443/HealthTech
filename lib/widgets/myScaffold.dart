import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_tech/screens/aboutUs.dart';
import 'package:health_tech/screens/blog.dart';
import 'package:health_tech/screens/contact.dart';
import 'package:health_tech/screens/coursesScreen.dart';
import 'package:health_tech/screens/team.dart';

import '../screens/home.dart';
import '../screens/authScrenn.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;

  MyScaffold({required this.body});

  double deviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        toolbarHeight: deviceHeight(context)/10,
        title: Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'HealthTech',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 120,
              height: 2,
              color: Colors.teal,
            )
          ],
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: SafeArea(
        child: Drawer(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Screenshot 2024-08-07 182511.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [const BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),]
                      ),
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>HomeScreen()));
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.home,
                                        color: Colors.teal,
                                        size: 30,
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'Home Page',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'HealthTech Main page',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.teal,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Divider(
                            color: Colors.grey,
                            indent: 20,
                            endIndent: 20,
                          ),
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>AboutUs()));
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.account_box_rounded,
                                        color: Colors.teal,
                                        size: 30,
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'About Us',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'Learn more about us',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.teal,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Divider(
                            color: Colors.grey,
                            indent: 20,
                            endIndent: 20,
                          ),
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>CoursesScreen()));
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.school,
                                        color: Colors.teal,
                                        size: 30,
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'Courses',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'Take a look at courses',
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.teal,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Divider(
                            color: Colors.grey,
                            indent: 20,
                            endIndent: 20,
                          ),
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>Blog()));
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.pending_rounded,
                                        color: Colors.teal,
                                        size: 30,
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'Blog',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              "HealthTech blog",
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.teal,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Divider(
                            color: Colors.grey,
                            indent: 20,
                            endIndent: 20,
                          ),
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>Team()));
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.people,
                                        color: Colors.teal,
                                        size: 30,
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'Team',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              "take a look at our team",
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.teal,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Divider(
                            color: Colors.grey,
                            indent: 20,
                            endIndent: 20,
                          ),
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>Contact()));
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.contact_support_rounded,
                                        color: Colors.teal,
                                        size: 30,
                                      ),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'Contact Us',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              "HealthTech's contancts info",
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios_sharp,
                                    color: Colors.teal,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(15),
                      child: InkWell(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings,
                                    color: Colors.grey[700],
                                    size: 30,
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Settings',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      Text(
                                        'Manage the app settings',
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_sharp,
                                color: Colors.grey[700],
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 5),  // x is 0 and y is positive to create a bottom-only shadow
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>AuthScreen()));
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.login,
                                color: Colors.red[800],
                                size: 30,
                              ),
                              SizedBox(width: 15,),
                              Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
      body: body,
    );
  }
}