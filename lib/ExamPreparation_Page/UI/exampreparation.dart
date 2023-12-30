import 'package:flutter/material.dart';

class ExamPreparation extends StatelessWidget {
  const ExamPreparation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exam Preparation'), actions: [
        Container(
          height: 80,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                  image: AssetImage('assets/images/traffic Sign/img_1.png'),
                  fit: BoxFit.contain)),
        )
      ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Start to Prepare Exam From Here',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Image.asset(
                'assets/images/samplequestion/26.JPG',
                width: 400,
              ),
              const SizedBox(height: 5),
              Image.asset(
                'assets/images/samplequestion/27.JPG',
                width: 400,
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/samplequestion/28.JPG', // Replace this with the path to your second image
                width: 400, // Adjust the width as needed
              ),
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/samplequestion/29.JPG', // Replace this with the path to your second image
                width: 400, // Adjust the width as needed
              ),
              const SizedBox(height: 5),
              Image.asset(
                'assets/images/samplequestion/30.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/31.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/32.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/33.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/34.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/35.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/36.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/37.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/38.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/39.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/40.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/41.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/42.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/43.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/44.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/45.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/46.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/47.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/48.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/49.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/50.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/51.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/52.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/53.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/54.JPG',
                width: 400,
              ),Image.asset(
                'assets/images/samplequestion/55.JPG',
                width: 400,
              ),
              Image.asset(
                'assets/images/samplequestion/56.JPG',
                width: 400,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
