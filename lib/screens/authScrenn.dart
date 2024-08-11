import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:health_tech/screens/home.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLogin = false;

  void toggleLogin() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Screenshot 2024-08-07 182511.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: deviceWidth(context),
                  height: deviceHeight(context),
                ),
                // Sign Up Container
                Container(
                  width: deviceWidth(context) / 1.3,
                  decoration: BoxDecoration(
                    color: Color(0xff081424),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(5, 5), // Bottom shadow
                      ),
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(-5, 5), // Left shadow (notice the negative x-offset)
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(20),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'HealthTech',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InfoTextField(
                          labelText: 'Username',
                          infoMessage: "Username must be\n"
                              "# Contains only letters and numbers for easy memorization.\n"
                              "# Not less than 5 and not more than 15.\n"
                              "#Not be already used before.",
                        ),
                        SizedBox(height: 20),
                        InfoTextField(
                          labelText: 'Email',
                          infoMessage: "The email must be valid to communicate with you in case of sending a confirmation code.",
                        ),
                        SizedBox(height: 20),
                        InfoTextField(
                          labelText: 'Password',
                          infoMessage: "Password must be\n"
                              "# Contains only letters and numbers for easy memorization.\n"
                              "# Not less than 7 and not more than 14.",
                          isPass: true,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>HomeScreen()));
                          },
                          child: Container(
                            width: 170,
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Oxanium',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: toggleLogin,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Login Container
                AnimatedPositioned(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  top: showLogin ? deviceHeight(context)/7 : deviceHeight(context),
                  left: (deviceWidth(context) - (deviceWidth(context) / 1.3)) / 2,
                  right: (deviceWidth(context) - (deviceWidth(context) / 1.3)) / 2,
                  child: Container(
                    width: deviceWidth(context) / 1.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(5, 5),
                        ),
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(-5, 5),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'HealthTech',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InfoTextField(
                          labelText: 'Username',
                          infoMessage: "Enter your username.",
                          textColor: Colors.teal,
                          borderColor: Colors.teal,
                        ),
                        SizedBox(height: 20),
                        InfoTextField(
                          labelText: 'Password',
                          infoMessage: "Enter your password.",
                          isPass: true,
                          textColor: Colors.teal,
                          borderColor: Colors.teal,
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Oxanium',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        TextButton(
                          onPressed: toggleLogin,
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoTextField extends StatelessWidget {
  final String labelText;
  final String infoMessage;
  final bool isPass;
  final Color textColor;
  final Color borderColor;

  InfoTextField({
    required this.labelText,
    required this.infoMessage,
    this.isPass = false,
    this.textColor = Colors.white,
    this.borderColor = Colors.white,
  });

  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(infoMessage),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            obscureText: isPass,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: borderColor),
              ),
            ),
            style: TextStyle(color: textColor),
          ),
        ),
        IconButton(
          icon: Icon(Icons.info_outline, color: textColor),
          onPressed: () => _showInfoDialog(context),
        ),
      ],
    );
  }
}