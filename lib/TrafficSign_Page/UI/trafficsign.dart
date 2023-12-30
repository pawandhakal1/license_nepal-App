import 'package:flutter/material.dart';
class TrafficSign extends StatelessWidget {
  const TrafficSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Traffic Sign'),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome To Traffic Sign ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/traffic Sign/5.JPG', // Replace this with the path to your first image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/traffic Sign/6.JPG', // Replace this with the path to your second image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/7.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),

              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/8.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/9.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/10.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/11.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/12.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/13.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/14.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/15.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/16.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/17.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/traffic Sign/18.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),

            ],
          ),
        ),
      ),
    );
  }
}