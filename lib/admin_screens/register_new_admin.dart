import 'package:flutter/material.dart';

import 'admin_start.dart';

class RegisterNewAdmin extends StatefulWidget {
  const RegisterNewAdmin({super.key});

  @override
  State<RegisterNewAdmin> createState() => _RegisterNewAdminState();
}

class _RegisterNewAdminState extends State<RegisterNewAdmin> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();

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
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const AdminStart()));
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
              'Registering New Admin',
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
              controller: nameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintStyle: const TextStyle(
                  fontSize: 20,
                ),
                hintText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
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
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          GestureDetector(
            onTap: () {
              if (nameController.text.isEmpty) {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Container(
                      height: 250,
                      width: 200,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Please enter the name',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xff007A70),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
                return;
              }

              if (emailController.text.isEmpty) {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Container(
                      height: 250,
                      width: 200,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Please enter the email',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xff007A70),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
                return;
              }
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const AdminStart()));

              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Container(
                    height: 350,
                    width: 300,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 100,
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'ID',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100,
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'Name',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    nameController.text,
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    emailController.text,
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xff007A70),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'Close',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            child: Material(
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
                  'Register New Admin',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

