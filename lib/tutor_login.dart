import 'package:flutter/material.dart';
import 'package:tuition/start.dart';

class TutorLogin extends StatefulWidget {
  const TutorLogin({super.key});

  @override
  State<TutorLogin> createState() => _TutorLoginState();
}

class _TutorLoginState extends State<TutorLogin> {
  final emailController = TextEditingController();
  final idController = TextEditingController();

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
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) => const Start()));
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
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Tutor Log In',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintStyle: const TextStyle(
                  fontSize: 20,
                ),
                hintText: 'Your Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: idController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintStyle: const TextStyle(
                  fontSize: 20,
                ),
                hintText: 'Your ID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Material(
            elevation: 10.0,
            shadowColor: Colors.black,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 70,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff007A70),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
