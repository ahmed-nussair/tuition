import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tuition/student_screens/enrolled_course_details.dart';

class EnrolledCourses extends StatelessWidget {
  const EnrolledCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30D5C8),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => AlertDialog(
                  content: const Text(
                    'Are you sure?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          SystemNavigator.pop();
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        alignment: Alignment.center,
                        child: const Text(
                          'No',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          SystemNavigator.pop();
                        }
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          SystemNavigator.pop();
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        alignment: Alignment.center,
                        child: const Text(
                          'Yes',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 15),
              child: const Icon(Icons.close),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Mohamed Sayed',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Enrolled Courses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(courses.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            EnrolledCourseDetails(courseName: courses[index])));
                  },
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff007A70),
                        ),
                        child: Text(
                          courses[index],
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 0.0,
                        bottom: 0.0,
                        right: 30,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> courses = [
  'Math',
  'Physics',
  'AI',
  'ICT',
  'Robotics',
];
