import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_tech/widgets/custom_Container.dart';
import 'package:health_tech/widgets/custom_container2.dart';
import 'package:health_tech/widgets/divider.dart';
import 'package:health_tech/widgets/myScaffold.dart';
import 'package:health_tech/widgets/team_member.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  Timer? _timer;
  final List<Map<String, String>> _slides = [
    {
      'image': 'assets/1b.jpg',
      'title': 'Magnam aliquam quaerat',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce condimentum aliquam vestibulum. Cras vulputate nulla ipsum, non imperdiet risus consequat eget. Phasellus sed tincidunt urna. Donec sollicitudin convallis velit, vitae finibus metus laoreet in.',
    },
    {
      'image': 'assets/2b.jpg',
      'title': 'Sed pretium',
      'description': 'Fusce vulputate mauris vel enim lobortis tristique. Vivamus suscipit blandit dolor, non semper ante. Donec sit amet cursus nunc. Sed mauris magna, consectetur ac velit non, pulvinar viverra augue. Donec et justo lobortis, ornare neque ultrices, porta augue.',
    },
    {
      'image': 'assets/3b.jpg',
      'title': 'Suspendisse ultricies',
      'description': 'lacus sit amet turpis sodales rhoncus. Maecenas ut ex eu odio aliquet pretium in sed sem. Nulla sagittis arcu et mauris aliquam, quis sodales ipsum porta. Phasellus sed lorem nunc. Vestibulum dapibus fermentum nisl, a faucibus odio tincidunt non.',
    },
    {
      'image': 'assets/4b.jpg',
      'title': 'Praesent ac',
      'description': 'Praesent ac diam elit. Sed vitae quam dolor. Quisque quis vulputate elit, vitae scelerisque massa. Suspendisse diam dui, faucibus id ante a, laoreet laoreet urna. Integer sed suscipit risus, quis ornare nibh. Integer vel felis volutpat, porta sem ut, auctor elit.',
    },
    {
      'image': 'assets/5b.jpg',
      'title': 'pretium arcu',
      'description': ' sed semper purus malesuada ut. In semper sapien vehicula vehicula ultricies. Maecenas nec enim erat. Nullam quam metus, faucibus vel lorem a, interdum scelerisque justo. Quisque quam nulla, egestas quis justo ut, condimentum rhoncus diam.',
    },
    // Add more slides here
  ];

  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  void initState() {
    super.initState();
    _setupLoopedImages();
    _startAutoSlide();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _setupLoopedImages() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.jumpToPage(_slides.length); // Start at the first actual page
    });
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_pageController.hasClients) {
        int nextPage = (_pageController.page!.toInt() + 1) % _slides.length;
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 350, // Height of the slider
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: _slides.length,
                    itemBuilder: (context, index) {
                      final slide = _slides[index % _slides.length];
                      return _buildCard(slide['image']!, slide['title']!, slide['description']!);
                    },
                  ),
                  Positioned(
                    left: 0,
                    top: 150, // Adjust to center the arrow vertically in the slider
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 20),
                      onPressed: () {
                        int previousPage = (_pageController.page!.toInt() - 1) % _slides.length;
                        if (previousPage < 0) {
                          previousPage += _slides.length;
                        }
                        _pageController.animateToPage(
                          previousPage,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 150, // Adjust to center the arrow vertically in the slider
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 20),
                      onPressed: () {
                        int nextPage = (_pageController.page!.toInt() + 1) % _slides.length;
                        _pageController.animateToPage(
                          nextPage,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.black,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/medal.png', // Replace with your image path
                    height: 50,
                  ),
                  SizedBox(height: 20,),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Challenges And Solutions',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Start-up financing, intense competition, sudden increase in costs. - Solutions: searching for additional funding sources, excellence in quality, developing backup plans',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 30,
                  ),
                  SizedBox(height: 20,),
                  Image.asset(
                    'assets/open-book (1).png', // Replace with your image path
                    height: 50,
                  ),
                  SizedBox(height: 20,),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Legislation and regulations',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "The Institute must comply with local and international legislation and regulations related to the provision of online educational services",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 30,
                  ),
                  SizedBox(height: 20,),
                  Image.asset(
                    'assets/compass (1).png', // Replace with your image path
                    height: 50,
                  ),
                  SizedBox(height: 20,),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'For future orientation',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "The Institute continually seeks to improve and expand its educational programs and provide outstanding education in the field of health technology",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ), //slides
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
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                    ),
                    MyDivider(),
                    Text(
                      'High-quality educational content developed by industry experts. - A flexible and interactive environment that encourages learning for all. - Technical and academic support. - A dedicated team of trainers and consultants to reach their educational goals and the latest.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
            ), //about us
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Services',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  MyDivider(),
                  Text(
                    'The institute offers a variety of educational programs in health technology areas such as medical data analysis and health application development. - Provides technical and academic support services to ensure students’ goals are achieved.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/phone.png',
                        width: 40,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Health applications development',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 8), // Space between title and description
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 300), // Set a maximum width to allow wrapping
                            child: Text(
                              'The institute offers a variety of educational programs in health technology areas such as medical data analysis and health application development. - Provides technical and academic support services to ensure students’ goals are achieved.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.teal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/customer-service (1).png',
                        width: 40,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Technical support',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 8), // Space between title and description
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 300), // Set a maximum width to allow wrapping
                            child: Text(
                              'Provide assistance via phone, email, live chat, or even on social sites',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.teal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/graduation.png',
                        width: 40,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Academic achievement of student goals',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 8), // Space between title and description
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 300), // Set a maximum width to allow wrapping
                            child: Text(
                              "The Academy seeks to achieve the student's goals by providing distinct and integrated educational programs, designed to meet their academic and personal needs r",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.teal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/graduation (1).png',
                        width: 40,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Educational programs',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 8), // Space between title and description
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 300), // Set a maximum width to allow wrapping
                            child: Text(
                              'Software tools and systems used in the education process to improve the educational experience and facilitate access to information and knowledge',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.teal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ), //services
            Container(
              width: double.infinity,

              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/call-to-action-bg.jpg',),
                  fit: BoxFit.cover,
                )
              ),
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Call To Action',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ), // call to action title
                  SizedBox(height: 10,),
                  Text(
                    'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ), // call to action description
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 2,color: Colors.white),
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Call To Action',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ) //call to action button
                ],
              ),
            ), //call to action
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'courses',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ), // courses title
                  MyDivider(),
                  SizedBox(height: 10,),
                  Text(
                    'The institute offers a variety of educational programs in health technology areas such as medical data analysis and health application development. - Provides technical and academic support services to ensure students’ goals are achieved',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ), // courses description
                  SizedBox(height: 20,),
                  CustomContainer2(
                      img: 'assets/1.jpg',
                      category: 'Marketing',
                      price: '169',
                      title: 'Health Marketing',
                      description: 'A specialty that focuses on developing and promoting health services and health products to attract consumers and enhance their health',
                      overview: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit aut ipsa quam impedit accusamus labore eligendi neque cupiditate repellat asperiores!\n\nLorem ipsum dolor sit amet consectetur adipisicing, elit. Modi reprehenderit dolorum nemo voluptatibus, ad nam, blanditiis ipsa pariatur, assumenda animi repellendus vero omnis fuga quas, est? Vitae, reprehenderit quo quas.\n\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Suscipit recusandae tempore quia repellat officiis voluptatum blanditiis, cupiditate, sit minus beatae distinctio, numquam illum alias repellendus ad quis earum voluptatibus iusto. Ut est, velit deserunt? Tempore modi hic error nam, vel?",
                      starCount: 5,
                  ),
                  SizedBox(height: 10,),
                  CustomContainer2(
                      img: 'assets/app1.jpg',
                      category: 'Information',
                      price: '250',
                      title: 'Health information technology',
                      description: 'An interdisciplinary field that focuses on the use of technology to improve health care services .',
                      overview: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit aut ipsa quam impedit accusamus labore eligendi neque cupiditate repellat asperiores!\n\nLorem ipsum dolor sit amet consectetur adipisicing, elit. Modi reprehenderit dolorum nemo voluptatibus, ad nam, blanditiis ipsa pariatur, assumenda animi repellendus vero omnis fuga quas, est? Vitae, reprehenderit quo quas.\n\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Suscipit recusandae tempore quia repellat officiis voluptatum blanditiis, cupiditate, sit minus beatae distinctio, numquam illum alias repellendus ad quis earum voluptatibus iusto. Ut est, velit deserunt? Tempore modi hic error nam, vel?",
                      starCount: 3,
                  ),
                  SizedBox(height: 10,),
                  CustomContainer2(
                      img: 'assets/app1.jpg',
                      category: 'Programming',
                      price: '180',
                      title: 'Health applications programming',
                      description: 'Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.',
                      overview: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit aut ipsa quam impedit accusamus labore eligendi neque cupiditate repellat asperiores!\n\nLorem ipsum dolor sit amet consectetur adipisicing, elit. Modi reprehenderit dolorum nemo voluptatibus, ad nam, blanditiis ipsa pariatur, assumenda animi repellendus vero omnis fuga quas, est? Vitae, reprehenderit quo quas.\n\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Suscipit recusandae tempore quia repellat officiis voluptatum blanditiis, cupiditate, sit minus beatae distinctio, numquam illum alias repellendus ad quis earum voluptatibus iusto. Ut est, velit deserunt? Tempore modi hic error nam, vel?",
                      starCount: 4,
                  ),
                  SizedBox(height: 10,),
                  CustomContainer2(
                      img: 'assets/app1.jpg',
                      category: 'Management',
                      price: '180',
                      title: 'Health information Management',
                      description: 'A field concerned with the management and coordination of health data and health systems within the framework of health care',
                      overview: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit aut ipsa quam impedit accusamus labore eligendi neque cupiditate repellat asperiores!\n\nLorem ipsum dolor sit amet consectetur adipisicing, elit. Modi reprehenderit dolorum nemo voluptatibus, ad nam, blanditiis ipsa pariatur, assumenda animi repellendus vero omnis fuga quas, est? Vitae, reprehenderit quo quas.\n\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Suscipit recusandae tempore quia repellat officiis voluptatum blanditiis, cupiditate, sit minus beatae distinctio, numquam illum alias repellendus ad quis earum voluptatibus iusto. Ut est, velit deserunt? Tempore modi hic error nam, vel?",
                      starCount: 4,
                  ),
                ],
              ),
            ), //courses
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String imagePath, String title, String description) {
    return Container(
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.srcATop
            )
        ),
      ),
      padding: EdgeInsets.all(45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {

            },
            child: Container(
              width: 170,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.greenAccent[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Get Started',
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
        ],
      ),
    );
  }
}
