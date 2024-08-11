import 'package:flutter/material.dart';

import '../screens/blogDetails.dart';

class BlogContainer extends StatelessWidget {
  final String title;
  final String heading1;
  final String text1;
  final String heading2;
  final String text2;
  final String img1;
  final String heading3;
  final String text3;
  final String heading4;
  final String text4;
  final String img2;
  final String heading5;
  final String text5;
  final String question;
  final String date;
  final String description;
  final double gap;
  const BlogContainer(
      {super.key,
        required this.title,
        required this.heading1,
        required this.text1,
        required this.heading2,
        required this.text2,
        required this.img1,
        required this.heading3,
        required this.text3,
        required this.heading4,
        required this.text4,
        required this.img2,
        required this.heading5,
        required this.text5,
        required this.question,
        required this.date,
        required this.description,
        required this.gap,
      });
  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) =>BlogDetails(
                title: title,
                heading1: heading1,
                text1: text1,
                heading2: heading2,
                text2: text2,
                img1: img1,
                heading3: heading3,
                text3: text3,
                heading4: heading4,
                text4: text4,
                img2: img2,
                heading5: heading5,
                text5: text5,
                question: question
            )));
          },
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 10),
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  child: Image.asset(
                    img2,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 200, // This ensures only 50px overlaps with the image (250px height - 50px overlap)
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    width: deviceWidth(context) / 1.2,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 5,
                          color: Colors.teal,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 10),
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  date,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),
        SizedBox(height: gap,)
      ],
    );
  }
}
