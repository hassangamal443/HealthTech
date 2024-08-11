import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamMember extends StatelessWidget {
  final String img;
  final String name;
  final String job;
  const TeamMember({
    super.key,
    required this.img,
    required this.name,
    required this.job
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(width: 1,color: Colors.grey)
      ),
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Image.asset(img),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    job,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
