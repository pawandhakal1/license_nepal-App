import 'package:flutter/material.dart';

class ImportantTopic extends StatelessWidget {
  const ImportantTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Topic'),
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
                'Welcome To Important Topic ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/important topic/1.JPG', // Replace this with the path to your first image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/important topic/2.JPG', // Replace this with the path to your second image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/important topic/3.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),

              SizedBox(height: 20),
              Image.asset(
                'assets/images/important topic/4.JPG', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),

            ],
          ),
        ),
      ),
    );
  }
}
