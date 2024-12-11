import 'package:flutter/material.dart';

class MaterialsWidget extends StatelessWidget {
  final String courseName;

  const MaterialsWidget({
    super.key,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(mathMaterials.length, (index) {
        return GestureDetector(
          onTap: () {

          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              mathMaterials[index],
              style: const TextStyle(
                fontSize: 25,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        );
      }),
    );
  }
}

List<String> mathMaterials = [
  'Mathematics Material',
  'Math Booklet',
  'Math Guide',
];

