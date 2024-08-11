import 'package:flutter/material.dart';
import 'package:health_tech/widgets/myScaffold2.dart';

import '../widgets/custom_container2.dart';
import '../widgets/myScaffold.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

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
                    'Courses',
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
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
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
            ),
          ],
        ),
      ),

    );
  }
}
