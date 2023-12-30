import 'package:flutter/material.dart';

class WrittenResult extends StatelessWidget {
  const WrittenResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Written Result'),
          actions: [
            Container(
              height: 80,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image: AssetImage('assets/images/traffic Sign/img_1.png'),
                      fit: BoxFit.cover)
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
                'Welcome To Today Written Result',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/writtenresult/img_2.png', // Replace this with the path to your first image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/writtenresult/img_3.png', // Replace this with the path to your second image
                width: 400, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/writtenresult/img_4.png', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),

              SizedBox(height: 20),
              Image.asset(
                'assets/images/writtenresult/img_5.png', // Replace this with the path to your third image
                width: 400, // Adjust the width as needed
              ),

            ],
          ),
        ),
      ),
    );
  }
}
