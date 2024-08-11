import 'package:flutter/material.dart';
import 'package:health_tech/screens/courses.dart';

class CustomContainer2 extends StatelessWidget {
  final String img;
  final String category;
  final String price;
  final String title;
  final String description;
  final String overview;
  final int starCount;
  const CustomContainer2({
    super.key,
    required this.img,
    required this.category,
    required this.price,
    required this.title,
    required this.description,
    required this.overview,
    required this.starCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1,color: Colors.grey),
          color: Colors.white
      ),
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
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                            category,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20, // Adjust the font size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>CoursesScreen(
                        img: img,
                        title: title,
                        description: description,
                        price: price,
                        overview: overview,
                        starCount: starCount,
                    )));
                  },
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,color: Colors.grey,indent: 10,endIndent: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/1p.jpg',
                              fit: BoxFit.cover, // Ensures the image covers the entire circle
                              width: 70, // Match the diameter of the CircleAvatar (2 * radius)
                              height: 70, // Match the diameter of the CircleAvatar (2 * radius)
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Ahmed Maher',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.person,size: 30,color: Colors.grey,),
                        Text(
                          "50",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20, // Adjust the font size as needed
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.favorite,size: 30,color: Colors.grey,),
                        Text(
                          "65",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20, // Adjust the font size as needed
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
