import 'package:flutter/material.dart';

class ClassesWidget extends StatelessWidget {
  final String courseName;

  const ClassesWidget({
    super.key,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(mathClasses.length, (index) {
        return GestureDetector(
          onTap: () {

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
                  mathClasses[index],
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
    );
  }
}

List<String> mathClasses = [
  '10:00 AM - B1 - Dr.Ismail',
];

List<String> physicsClass = [
  '11:00 AM - C2 - Dr.Yesmeen',
];

List<String> roboticsClasses = [
  '10:00 AM - A1 - Dr.Yaser',
  '04:00 PM - C3 - Dr.Mohamed',
];

List<String> aiClasses = [
  '11:00 AM - B1 - Dr.Ghada',
];

List<String> ictClasses = [
  '10:00 AM - B1 - Dr.Mark',
];
