import 'package:flutter/material.dart';
import 'package:health_tech/widgets/myScaffold.dart';

import '../widgets/divider.dart';
import '../widgets/team_member.dart';

class Team extends StatelessWidget {
  const Team({super.key});

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
                        'Health technology team',
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
                          'Team',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ), // team title
                      MyDivider(),
                      SizedBox(height: 10,),
                      Text(
                        'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 20,),
                      TeamMember(
                          img: 'assets/team-1.jpg',
                          name: 'Full Name',
                          job: 'Business Development Manager'
                      ),
                      TeamMember(
                          img: 'assets/team-2.jpg',
                          name: 'Full Name',
                          job: 'Trainers and Instructors'
                      ),
                      TeamMember(
                          img: 'assets/team-3.jpg',
                          name: 'Full Name',
                          job: 'CTO'
                      ),
                      TeamMember(
                          img: 'assets/team-4.jpg',
                          name: 'Full Name',
                          job: 'Education Manager'
                      ),
                      TeamMember(
                          img: 'assets/team-1.jpg',
                          name: 'Full Name',
                          job: 'Business Development Manager'
                      ),
                      TeamMember(
                          img: 'assets/team-2.jpg',
                          name: 'Full Name',
                          job: 'Trainers and Instructors'
                      ),
                      TeamMember(
                          img: 'assets/team-3.jpg',
                          name: 'Full Name',
                          job: 'CTO'
                      ),
                      TeamMember(
                          img: 'assets/team-4.jpg',
                          name: 'Full Name',
                          job: 'Education Manager'
                      ),
                    ],
                  ),
                )
              ],
            )
        ),
    );
  }
}
