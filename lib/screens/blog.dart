import 'package:flutter/material.dart';
import 'package:health_tech/screens/blogDetails.dart';
import 'package:health_tech/widgets/blogContainer.dart';
import 'package:health_tech/widgets/myScaffold.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});
  double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
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
                      'Blog',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              BlogContainer(
                  title: 'Health information technology',
                  heading1: 'Electronic Health Records - EHRs:',
                  text1: 'Digital health records are maintained for patients to provide accurate and up-to-date information about their health condition. It contributes to improving coordination between different health care providers. Clinical Decision Support Systems (CDSS): Systems that provide doctors and nurses with recommendations and guidance based on patient health data. It helps improve treatment decisions and reduce medical errors.',
                  heading2: 'Supporting medical organizations (Clinical Decision Support Systems - CDSS):',
                  text2: "A necessity system for doctors and nurses, guidelines and guidance are based on patients' health data. Helps eliminate medical causes",
                  img1: 'assets/AdobeStock_213197424.webp',
                  heading3: 'Telemedicine (telemedicine):',
                  text3: 'Using communication technologies to provide remote health care. It contributes to providing care to patients in remote areas, excluding the need for travel',
                  heading4: 'Health Information Systems (HIS):',
                  text4: 'An effective system for storing and freezing health data from various sources. Used in planning and management',
                  img2: 'assets/ss.jpg',
                  heading5: 'Health cybersecurity:',
                  text5: 'Protect sensitive health data from hacks and cyber attacks. Ensuring the confidentiality and integrity of health data',
                  question: 'Health IT plays a vital role in improving healthcare and achieving overall health goals',
                  date: 'Sunday, September 26th at 7:00 pm',
                  description: 'The field of health information management targets new technologies to improve the quality of healthcare. This field includes several essential components and technologies to improve and accurately deliver health care',
                  gap: 160,
              ),
              BlogContainer(
                  title: "Health marketing",
                  heading1: "Health media Health marketing focuses on creating technology",
                  text1: "communicating, and delivering health information and interventions using customer-centered and science-based strategies to protect and promote the health of diverse populations. Here are some key aspects of health marketing",
                  heading2: "Key Concepts",
                  text2: "Behavior Change:\n Strategies aimed at influencing health behaviors to improve health outcomes. Audience Segmentation:\n Identifying and targeting specific groups within a population based on factors like demographics, behavior, and health needs. Message Development:\n Crafting clear, relevant, and persuasive messages tailored to the target audience. Channel Selection:\n Choosing the most effective channels (e.g., social media, TV, radio, print) to reach the audience. Campaign Design and Evaluation:\n Planning, executing, and assessing the effectiveness of health marketing campaigns.",
                  img1: "assets/m.png",
                  heading3: "TCourses and Topics",
                  text3: "Introduction to Health Marketing:\nFundamentals of health marketing, including principles and practices. Health Communication:\nTechniques for effective communication in health promotion and disease prevention. Digital Health Marketing:\nUtilizing digital tools and platforms for health marketing, including social media and mobile health apps. Behavioral Science in Health Marketing:\nUnderstanding how behavioral science principles apply to health marketing strategies. Public Health Campaigns:\nDesigning, implementing, and evaluating public health campaigns. Market Research in Healthcare: Conducting research to understand the needs and preferences of different health audiences. Health Promotion and Education:\nStrategies for promoting health and educating the public about health issues. Ethics in Health Marketing: Ethical considerations and challenges in health marketing.",
                  heading4: "Potential Benefits",
                  text4: "mproved Health Outcomes:\nEffective health marketing can lead to better health behaviors and outcomes. Increased Awareness:\nRaising awareness about health issues and interventions. Enhanced Engagement:\nEngaging target audiences through tailored and relevant health messages.",
                  img2: "assets/healthcare_SMM.webp",
                  heading5: "Where to Find Courses",
                  text5: "Universities:\nMany universities offer courses in health marketing as part of public health or marketing programs. Online Learning Platforms:\nWebsites like Coursera, edX, and Udemy offer courses in health marketing and related topics. Professional Organizations:\nOrganizations such as the American Public Health Association (APHA) and the Society for Health Communication provide resources and training.",
                  question: "Would you like more specific information on courses or institutions offering health marketing programs?",
                  date: "Sunday, November 15th at 7:00 pm",
                  description: "A specialty that focuses on developing and promoting health services and health products to attract consumers and enhance their health",
                  gap: 120,
              ),
              BlogContainer(
                  title: "Health applications programming",
                  heading1: "Programming health applications",
                  text1: "involves creating software that helps manage and improve health and healthcare services. This can include developing mobile apps for fitness tracking, telemedicine platforms, electronic health records (EHR) systems, and more. Here are some key areas and tools involved in health applications programming",
                  heading2: "Key Areas in Health Applications Programming",
                  text2: "Electronic Health Records (EHR):\n\nManaging patient data, including medical history, treatments, and test results. Ensuring data security and compliance with regulations like HIPAA (Health Insurance Portability and Accountability Act).\n\nTelemedicine: Developing platforms for remote consultations between patients and healthcare providers. Integrating video conferencing, chat, and scheduling functionalities.\n\nMobile Health(mHealth): Creating mobile apps for fitness tracking, medication reminders, and health monitoring. Using sensors and wearable devices to gather health data.\n\nHealth Informatics: Analyzing health data to improve patient outcomes and optimize healthcare services. Using big data tools and techniques to manage and interpret large datasets.\n\nPatient Engagement: Developing tools to improve patient communication and engagement with their health. Creating portals and apps for patients to access their health information and communicate with providers. Tools and Technologiess.",
                  img1: "assets/qweqwe.webp",
                  heading3: "Tools and Technologies",
                  text3: "Programming Languages:\n\nJavaScript: For web and mobile app development (React, Angular). Python: For data analysis, machine learning, and backend development (Django, Flask). Java/Kotlin: For Android app development. Swift: For iOS app development.\n\nFrameworks and Libraries: React Native: For cross-platform mobile app development. TensorFlow/PyTorch: For machine learning and AI applications in health.\n\nAPIs and SDKs: FHIR (Fast Healthcare Interoperability Resources): Standard for exchanging healthcare information electronically. Google Fit and Apple HealthKit: For integrating health data from wearable devices.\n\nCloud Services: AWS, Azure, Google Cloud: For scalable and secure cloud infrastructure. Firebase: For real-time databases and authentication.\n\nSecurity and Compliance: Implementing encryption, access controls, and other security measures to protect health data. Ensuring compliance with regulations such as HIPAA, GDPR, and others.",
                  heading4: "Learning Resources",
                  text4: 'Online Courses:\n\nCoursera, Udemy, edX: Offer courses on health informatics, EHR systems, and health application development. Health IT Certification Programs: For specialized knowledge in healthcare technology.\n\nBooks: "Healthcare Information Technology Exam Guide for CHTS and CAHIMS Certifications": For foundational knowledge. "Digital Health: Scaling Healthcare to the World": For insights into digital health trends and technologies.\n\nCommunities and Forums: Stack Overflow: For programming help. Health IT forums and LinkedIn groups: For industry-specific discussions.',
                  img2: "assets/app1.jpg",
                  heading5: "",
                  text5: "",
                  question: "If you have a specific focus or a project in mind, let me know, and I can provide more detailed guidance tailored to your needs.",
                  date: "Sunday, September 26th at 7:00 pm",
                  description: "Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.",
                  gap: 100,
              ),
              BlogContainer(
                  title: "Health information management",
                  heading1: "Health Information Management",
                  text1: "HIM) involves the practice of acquiring, analyzing, and protecting digital and traditional medical information vital to providing quality patient care. HIM professionals work with various forms of health information to ensure it is accurate, accessible, and secure",
                  heading2: "Key Components of Health Information Management",
                  text2: "Data Management:Collecting, storing, and managing patients' health information in electronic health records (EHRs) or other systems.\n\nInformation Governance: Establishing policies and procedures to ensure data accuracy, privacy, and compliance with regulations.\n\nData Analysis: Using data analytics to improve patient care, enhance healthcare outcomes, and support health research. Privacy and Security: Implementing measures to protect patient information from unauthorized access and breaches.\n\nRegulatory Compliance: Ensuring adherence to healthcare laws and regulations, such as HIPAA in the United States.\n\nHealth Informatics: Integrating information technology with healthcare to improve the efficiency and effectiveness of health services.",
                  img1: "assets/eco-system-2.png",
                  heading3: "Roles in Health Information Management",
                  text3: "Health Information Manager: Oversees the management of health data and information systems, ensuring compliance and data integrity.\n\nMedical Records Technician: Manages and organizes medical records, ensuring they are complete, accurate, and accessible.\n\nClinical Data Analyst: Analyzes health data to support clinical decision-making and improve patient outcomes.\n\nPrivacy Officer: Ensures that patient information is protected and that the organization complies with privacy laws and regulations.\n\nHealth Informatics Specialist: Develops and implements health IT systems to enhance patient care and streamline healthcare processes.",
                  heading4: "Importance of Health Information Management",
                  text4: "Improves Patient Care: Accurate and timely health information is critical for providing quality patient care and making informed medical decisions.\n\nEnhances Efficiency: Effective HIM practices streamline administrative processes and reduce costs in healthcare organizations.\n\nSupports Research: High-quality health data is essential for medical research and the development of new treatments and therapies.\n\nEnsures Compliance: Proper HIM ensures that healthcare organizations comply with legal and regulatory requirements, avoiding penalties and legal issues.",
                  img2: "assets/healthcare_SMM.webp",
                  heading5: "Education and Certification",
                  text5: "Education: Degrees in health information management, health informatics, or related fields are common. Programs may include courses in medical terminology, health data management, and health information systems..\n\nCertification: Professional certifications such as Registered Health Information Administrator (RHIA) or Certified Health Data Analyst (CHDA) are valuable credentials for HIM professionals.",
                  question: "IWould you like more specific information on any aspect of health information management?",
                  date: "Sunday, November 15th at 7:00 pm",
                  description: "A field concerned with the management and coordination of health data and health systems within the framework of health care",
                  gap: 150,
              )
            ],
          ),
        )
    );
  }
}
