import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fraudsentry/screen/dashboard/profile/widgets/search_field.dart';
import 'package:google_fonts/google_fonts.dart';

class faqpage extends StatefulWidget {
  const faqpage({Key? key}) : super(key: key);

  @override
  State<faqpage> createState() => _faqpageState();
}

class _faqpageState extends State<faqpage> {
  bool questionopen = false;
  bool questionopen2 = false;
  bool questionopen3 = false;
  bool questionopen4 = false;
  bool questionopen5 = false;
  bool questionopen6 = false;
  bool questionopen7 = false;
  bool questionopen8 = false;
  bool questionopen9 = false;

  bool questionopen10 = false;
  bool questionopen11 = false;
  bool questionopen12 = false;
  bool questionopen13 = false;
  bool questionopen14 = false;
  bool questionopen15 = false;
  bool questionopen16 = false;
  bool questionopen17 = false;
  bool questionopen18 = false;
  bool questionopen19 = false;
  bool questionopen20 = false;
  bool questionopen21 = false;
  fagformatwidget({
    String? Question,
    String? Answer,
    final VoidCallback? onPressed,
    bool controller = false,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 320,
                child: Text(
                  Question!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              controller
                  ? Icon(Icons.arrow_drop_down)
                  : Icon(Icons.arrow_drop_up),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        controller
            ? Text(
                Answer!,
                style: TextStyle(height: 2),
              )
            : Container()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
        title: Text(
          "FAQ",
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SearchField(
                hintText: "Search",
                kPadding: 0,
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen,
                Question: "What is FraudSentry?",
                Answer:
                    "FraudSentry is a fraud detection and prevention software that helps businesses and organizations identify and prevent fraudulent activities. Our software uses advanced machine learning algorithms to analyze transactions and detect patterns that may indicate fraudulent activity.",
                onPressed: () {
                  setState(() {
                    questionopen = !questionopen;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen2,
                Question: "How does FraudSentry work?",
                Answer:
                    "FraudSentry works by analyzing transactions and user behavior using machine learning algorithms and pattern recognition. Our software is designed to identify and flag potential instances of fraud in real-time, allowing businesses to take immediate action to prevent losses.",
                onPressed: () {
                  setState(() {
                    questionopen2 = !questionopen2;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen3,
                Question: "What types of fraud can FraudSentry detect?",
                Answer:
                    "FraudSentry can detect a wide range of fraudulent activities, including payment fraud, identity theft, account takeover, and more. Our software is constantly evolving to keep up with new types of fraud and emerging threats.",
                onPressed: () {
                  setState(() {
                    questionopen3 = !questionopen3;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen4,
                Question: "Is FraudSentry easy to use?",
                Answer:
                    "Yes, FraudSentry is designed to be user-friendly and easy to use. Our software features a simple and intuitive interface, making it easy for businesses of all sizes to implement and manage",
                onPressed: () {
                  setState(() {
                    questionopen4 = !questionopen4;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen5,
                Question:
                    "Can FraudSentry be customized to fit my business needs?",
                Answer:
                    "Yes, FraudSentry can be customized to fit your business needs. Our software is flexible and can be tailored to meet the specific needs and requirements of your organization.",
                onPressed: () {
                  setState(() {
                    questionopen5 = !questionopen5;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen6,
                Question: "Is my data safe with FraudSentry?",
                Answer:
                    "Yes, we take data privacy and security very seriously at FraudSentry. Our software is designed with advanced security measures to protect your data from unauthorized access and ensure compliance with relevant laws and regulations.",
                onPressed: () {
                  setState(() {
                    questionopen6 = !questionopen6;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen7,
                Question: "How do I get started with FraudSentry?",
                Answer:
                    "To get started with FraudSentry, simply visit our website and sign up for an account. Our team will work with you to customize the software to meet your needs and help you get up and running quickly.",
                onPressed: () {
                  setState(() {
                    questionopen7 = !questionopen7;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen8,
                Question: "How long does it take to set up FraudSentry?",
                Answer:
                    "The setup time for FraudSentry can vary depending on the complexity of your business and the specific requirements of your organization. However, our software is designed to be easy to install and configure, and our team is available to provide guidance and support throughout the setup process.",
                onPressed: () {
                  setState(() {
                    questionopen8 = !questionopen8;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen9,
                Question: " What kind of support does FraudSentry offer?",
                Answer:
                    "At FraudSentry, we offer a range of support options to help our customers get the most out of our software. Our support team is availablassisttance with setup, configuration, and ongoing maintenance, and we also offer training resources and online documentation.",
                onPressed: () {
                  setState(() {
                    questionopen9 = !questionopen9;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen10,
                Question: "What is the pricing for FraudSentry?",
                Answer:
                    "he pricing for FraudSentry varies depending on the size and requirements of your organization. We offer flexible pricing plans to fit businesses of all sizes, and our team is available to help you choose the plan that best meets your needs and budget.",
                onPressed: () {
                  setState(() {
                    questionopen10 = !questionopen10;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen11,
                Question:
                    "Does FraudSentry integrate with other software systems?",
                Answer:
                    "Yes, FraudSentry can be integrated with other software systems, including accounting, payment processing, and CRM software. Our team is available to provide guidance and support with integrating FraudSentry with your existing systems.",
                onPressed: () {
                  setState(() {
                    questionopen11 = !questionopen11;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen12,
                Question: "Does FraudSentry provide reporting and analytics?",
                Answer:
                    "Yes, FraudSentry provides powerful reporting and analytics capabilities, allowing businesses to gain valuable insights into their fraud prevention efforts. Our software includes a range of reporting tools and dashboards, providing real-time visibility into transaction activity and fraud trends.",
                onPressed: () {
                  setState(() {
                    questionopen12 = !questionopen12;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen13,
                Question:
                    "Can FraudSentry be used for businesses of all sizes?",
                Answer:
                    "Yes, FraudSentry is designed to be scalable and can be used by businesses of all sizes, from small startups to large enterprises. Our software can be customized to meet the specific needs and requirements of your organization, regardless of its size or complexity",
                onPressed: () {
                  setState(() {
                    questionopen13 = !questionopen13;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen14,
                Question:
                    "Is FraudSentry compatible with different types of payment methods?",
                Answer:
                    "Yes, FraudSentry is compatible with a wide range of payment methods, including credit and debit cards, e-wallets, and online payment gateways. Our software is designed to work with multiple payment methods, giving businesses greater flexibility and control over their fraud prevention efforts.",
                onPressed: () {
                  setState(() {
                    questionopen14 = !questionopen14;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen15,
                Question:
                    "Does FraudSentry require any special hardware or software to run?",
                Answer:
                    "No, FraudSentry does not require any special hardware or software to run. Our software is cloud-based and can be accessed from anywhere with an internet connection. This makes it easy for businesses to implement and manage, without requiring any additional hardware or software investments.",
                onPressed: () {
                  setState(() {
                    questionopen15 = !questionopen15;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen16,
                Question: "How often is FraudSentry updated with new features?",
                Answer:
                    "FraudSentry is updated regularly with new features and functionality to keep up with emerging threats and evolving fraud patterns. Our team is constantly monitoring the latest trends and developments in the fraud prevention space and updating our software accordingly to ensure that our customers are protected against the latest threats.",
                onPressed: () {
                  setState(() {
                    questionopen16 = !questionopen16;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen17,
                Question: "Does FraudSentry provide real-time alerts?",
                Answer:
                    "Yes, FraudSentry provides real-time alerts when potential instances of fraud are detected. Our software is designed to provide immediate notification of suspicious activity, allowing businesses to take immediate action to prevent losses and protect their customers.",
                onPressed: () {
                  setState(() {
                    questionopen17 = !questionopen17;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen18,
                Question:
                    " Can FraudSentry help me comply with regulatory requirements?",
                Answer:
                    "Yes, FraudSentry is designed to help businesses comply with regulatory requirements related to fraud prevention and financial security. Our software includes a range of features and tools to help businesses meet regulatory requirements and avoid costly fines and penalties",
                onPressed: () {
                  setState(() {
                    questionopen18 = !questionopen18;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen19,
                Question:
                    "Is FraudSentry easy to integrate with my existing systems?",
                Answer:
                    "Yes, FraudSentry is designed to be easy to integrate with existing systems and processes. Our team is available to provide guidance and support with integrating FraudSentry with your existing systems, ensuring a seamless and streamlined implementation process.",
                onPressed: () {
                  setState(() {
                    questionopen19 = !questionopen19;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen20,
                Question:
                    "How does FraudSentry protect customer data and ensure privacy?",
                Answer:
                    "FraudSentry takes data privacy and security very seriously and has implemented robust security measures to protect customer data. Our software is hosted on secure servers and is designed to comply with industry-leading security standards and best practices.",
                onPressed: () {
                  setState(() {
                    questionopen20 = !questionopen20;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              fagformatwidget(
                controller: questionopen21,
                Question: "How does FraudSentry handle false positives?",
                Answer:
                    " False positives can be a concern with any fraud prevention system, but FraudSentry is designed to minimize false positives and provide accurate detection of fraudulent activity. Our software uses advanced machine learning algorithms to analyze transactions and detect patterns that may indicate fraud, while also taking into account legitimate customer behavior to minimize false positives.",
                onPressed: () {
                  setState(() {
                    questionopen21 = !questionopen21;
                  });
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
