import 'package:flutter/material.dart';

class COlorVisionTest extends StatelessWidget {
  const COlorVisionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Vision'),
          actions: [
            Container(
              height: 80,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(image: AssetImage('assets/images/traffic Sign/img_1.png'),
                      fit: BoxFit.contain)
              ),

            )
          ]
      ),
      body:
      SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome To Color Vision Test ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/color vision/19.JPG', // Replace this with the path to your first image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/color vision/20.JPG', // Replace this with the path to your second image
                width: 400, // Adjust the width as needed
              ),
            ],
          ),
        ),
      ),
    );
  }
}
