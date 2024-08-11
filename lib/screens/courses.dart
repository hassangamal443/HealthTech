import 'package:flutter/material.dart';
import 'package:health_tech/widgets/myScaffold2.dart';

class CoursesScreen extends StatelessWidget {
  final String img;
  final String title;
  final String description;
  final String overview;
  final int starCount;
  final String price;
  const CoursesScreen({
    super.key,
    required this.img,
    required this.title,
    required this.description,
    required this.overview,
    required this.starCount,
    required this.price,
  });
  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
        title: title,
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Radius of 10 for rounded corners
                  child: Image.asset(
                    img,
                    width: double.infinity,
                    fit: BoxFit.cover, // Ensures the image covers the width properly
                  ),
                ),
                SizedBox(height: 20,),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(starCount, (index) {
                        return Icon(
                          Icons.star,
                          color: Colors.yellow,
                        );
                      }),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '\$$price',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,color: Colors.grey,indent: 30,endIndent: 30,),
                SizedBox(height: 10,),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Course Overview',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  overview,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(1, 1), // Bottom shadow
                      ),
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(-1, 1), // Left shadow (notice the negative x-offset)
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'This course includes:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(Icons.videocam_rounded,color: Colors.teal,),
                          SizedBox(width: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '52 Hours video',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.newspaper,color: Colors.teal,),
                          SizedBox(width: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '5 Articles',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.download,color: Colors.teal,),
                          SizedBox(width: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Downloadable resources',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.key,color: Colors.teal,),
                          SizedBox(width: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Full Lifetime access',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.monitor,color: Colors.teal,),
                          SizedBox(width: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              ' Access on mobile and TV',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.perm_device_info_outlined,color: Colors.teal,),
                          SizedBox(width: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Assignments',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.person,color: Colors.teal,),
                          SizedBox(width: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Ahmed Maher',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {

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
                              'Enroll Course',
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
                )
              ],
            ),
          ),
        )
    );
  }
}
