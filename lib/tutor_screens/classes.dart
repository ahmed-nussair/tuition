import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Classes extends StatelessWidget {
  const Classes({super.key});

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
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => AlertDialog(
                  content: const Text('Are you sure?',
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
                        child: const Text('No',
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

                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        alignment: Alignment.center,
                        child: const Text('Yes',
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
        ],
      ),
    );
  }
}
