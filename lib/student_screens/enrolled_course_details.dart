import 'package:flutter/material.dart';
import 'package:tuition/student_screens/enrolled_course_details_widgets/classes_widget.dart';
import 'package:tuition/student_screens/enrolled_course_details_widgets/materials_widget.dart';

class EnrolledCourseDetails extends StatefulWidget {
  final String courseName;

  const EnrolledCourseDetails({
    super.key,
    required this.courseName,
  });

  @override
  State<EnrolledCourseDetails> createState() => _EnrolledCourseDetailsState();
}

class _EnrolledCourseDetailsState extends State<EnrolledCourseDetails> {
  final int classes = 1;
  final int materials = 2;

  late int currentState;

  @override
  void initState() {
    currentState = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30D5C8),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 15),
              child: const Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            widget.courseName,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              // Classes Button
              Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentState =
                          currentState != classes ? classes : classes;
                    });
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    color: currentState == classes
                        ? const Color(0xff007A70)
                        : const Color(0xff30D5C8),
                    child: Text(
                      'Classes',
                      style: TextStyle(
                        color: currentState == classes
                            ? Colors.white
                            : Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),

              // Materals Button
              Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentState =
                          currentState != materials ? materials : materials;
                    });
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    color: currentState == materials
                        ? const Color(0xff007A70)
                        : const Color(0xff30D5C8),
                    child: Text(
                      'Materials',
                      style: TextStyle(
                        color: currentState == materials
                            ? Colors.white
                            : Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: currentState == classes
                ? ClassesWidget(
                    courseName: widget.courseName,
                  )
                : currentState == materials
                    ? MaterialsWidget(
                        courseName: widget.courseName,
                      )
                    : Container(),
          ),
        ],
      ),
    );
  }
}
