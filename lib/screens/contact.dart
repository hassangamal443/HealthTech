import 'package:flutter/material.dart';
import 'package:health_tech/widgets/myScaffold.dart';

import '../widgets/divider.dart';
import '../widgets/text_field_input.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

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
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'CONTACT',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                    MyDivider(),
                    SizedBox(height: 10,),
                    Text(
                      'If you face any problem, you can contact us by sending your problem',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      margin: EdgeInsets.only(bottom: 10),
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
                      child: Column(
                        children: [
                          Icon(Icons.location_on_sharp, color: Colors.teal,size: 50,),
                          SizedBox(height: 20,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Our Address',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'A108 Adam Street, New York, NY 535022',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      margin: EdgeInsets.only(bottom: 10),
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
                      child: Column(
                        children: [
                          Icon(Icons.email, color: Colors.teal,size: 50,),
                          SizedBox(height: 20,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Email Us',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'info@example.com',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'contact@example.com',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      margin: EdgeInsets.only(bottom: 10),
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
                      child: Column(
                        children: [
                          Icon(Icons.phone, color: Colors.teal,size: 50,),
                          SizedBox(height: 20,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Call Us',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '+1 5589 55488 55',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '+1 6678 254445 41',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      margin: EdgeInsets.only(bottom: 10),
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
                      child: Column(
                        children: [
                          TextFieldInput(
                            hintText: 'Your Name',
                            textInputType: TextInputType.text,
                          ),
                          SizedBox(height: 10,),
                          TextFieldInput(
                            hintText: 'Your Email',
                            textInputType: TextInputType.text,
                          ),
                          SizedBox(height: 10,),
                          TextFieldInput(
                            hintText: 'Subject',
                            textInputType: TextInputType.text,
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            cursorColor: Colors.white,
                            maxLines: null, // Allows the TextField to expand
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                hintText: "Message",
                                hintStyle: TextStyle(
                                    color: Colors.grey[600]
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8)
                            ),
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: () {
                              // Handle form submission
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Send Message',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Oxanium',
                                    fontSize: 17,
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
              )
            ],
          ),
        )
    );
  }
}
