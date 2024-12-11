import 'package:flutter/material.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff30D5C8),
      body: Column(
        children: [
          Expanded(
            child: ListView(),
          ),
        ],
      ),
    );
  }
}
