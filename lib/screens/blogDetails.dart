import 'package:flutter/material.dart';
import 'package:health_tech/widgets/myScaffold2.dart';

class BlogDetails extends StatelessWidget {
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
  const BlogDetails({
    super.key,
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
  });

  @override
  Widget build(BuildContext context) {
    return MyScaffold2(
      title: title,
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
                    title,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    heading1,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.teal
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    text1,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    heading2,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.teal
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    text2,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20,),
                  Image.asset(img1,width: double.infinity,),
                  SizedBox(height: 20,),
                  Text(
                    heading3,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.teal
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    text3,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    heading4,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.teal
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    text4,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20,),
                  Image.asset(img2,width: double.infinity,),
                  SizedBox(height: 20,),
                  Text(
                    heading5,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.teal
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    text5,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(thickness: 1,color: Colors.grey,indent: 30,endIndent: 30,),
                  SizedBox(height: 10,),
                  Text(
                    question,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.teal
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
