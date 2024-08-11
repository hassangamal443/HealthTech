import 'package:flutter/material.dart';
import 'package:health_tech/screens/team.dart';
import 'package:health_tech/widgets/myScaffold2.dart';

import '../widgets/custom_Container.dart';
import '../widgets/divider.dart';
import '../widgets/myScaffold.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              color: Colors.teal,
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'About Us',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.teal[50],
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/graduation.png',width: 70,),
                        SizedBox(height: 10,),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Skilled Instructors',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.teal[50],
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/globe.png',width: 70,),
                        SizedBox(height: 10,),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Online Classes',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.teal[50],
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/home.png',width: 70,),
                        SizedBox(height: 10,),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Home Projects',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.teal[50],
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/reading-book.png',width: 70,),
                        SizedBox(height: 10,),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Book Library',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Diam elitr kasd sed at elitr sed ipsum justo dolor sed clita amet diam',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/about.jpg',width: double.infinity,),
                  SizedBox(height: 20,),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Welcome to HealthTech',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit.\n\nTempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward,color: Colors.blue,),
                      SizedBox(width: 10,),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Skilled Instructors',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward,color: Colors.blue,),
                      SizedBox(width: 10,),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Online Classes',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward,color: Colors.blue,),
                      SizedBox(width: 10,),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'International Certificate',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward,color: Colors.blue,),
                      SizedBox(width: 10,),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Skilled Instructors',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward,color: Colors.blue,),
                      SizedBox(width: 10,),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Online Classes',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward,color: Colors.blue,),
                      SizedBox(width: 10,),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'International Certificate',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>Team()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'The Team',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/about-bg.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.8),
                            BlendMode.srcATop
                        )
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                  child: Column(
                    children: [
                      CustomContainer(
                          img: 'assets/about-mission.jpg',
                          icon: 'assets/download-speed.png',
                          title: 'Our Mission',
                          description: 'Providing high quality software for new customer requirements in the fields of health technology. - Providing comprehensive and continuous support to new generations with their younger educational path.'
                      ),
                      CustomContainer(
                          img: 'assets/about-plan.jpg',
                          icon: 'assets/document.png',
                          title: 'Our Plan',
                          description: 'There are several factors that can assist in its scientific technology programs and the development of strategic partnerships with the educational industry.'
                      ),
                      CustomContainer(
                          img: 'assets/about-vision.jpg',
                          icon: 'assets/view.png',
                          title: 'Our Vision',
                          description: 'HealthTech Institute exists to be visible in providing outstanding education in the areas of health technology, and to be an important reference for professionals and those interested in public leadership.'
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
