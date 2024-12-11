import 'package:flutter/material.dart';

class RecordedLecturesWidget extends StatelessWidget {
  final String courseName;

  const RecordedLecturesWidget({
    super.key,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(recordedLectures.length, (index) {
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
                  recordedLectures[index],
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

List<String> recordedLectures = [
  '01 - First Lecture',
  '02 - Second Lecture',
  '03 - Third Lecture',
  '04 - Fourth Lecture',
];
