import 'package:flutter/material.dart';

class WrittenTest extends StatefulWidget {
  const WrittenTest({Key? key}) : super(key: key);

  @override
  _WrittenTestState createState() => _WrittenTestState();
}

class _WrittenTestState extends State<WrittenTest> {
  List<MCQQuestionData> mcqData = [
    MCQQuestionData(
      question: 'Question 1: Which of the following is a mode of transportation?',
      options: ['Car', 'Table', 'Chair', 'Laptop'],
      correctAnswer: 'Car',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 2: What is the fastest mode of transportation?',
      options: ['Walking', 'Bicycle', 'Car', 'Airplane'],
      correctAnswer: 'Airplane',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 1: Which of the following is a mode of transportation?',
      options: ['Car', 'Table', 'Chair', 'Laptop'],
      correctAnswer: 'Car',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 2: What is the fastest mode of transportation?',
      options: ['Walking', 'Bicycle', 'Car', 'Airplane'],
      correctAnswer: 'Airplane',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 3: Which mode of transportation uses tracks?',
      options: ['Car', 'Bicycle', 'Train', 'Boat'],
      correctAnswer: 'Train',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 4: What type of vehicle is used for carrying goods and materials?',
      options: ['Bus', 'Bicycle', 'Truck', 'Train'],
      correctAnswer: 'Truck',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 5: What is a common public transportation system in cities?',
      options: ['Spaceship', 'Train', 'Rocket', 'Bus'],
      correctAnswer: 'Train',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 6: What mode of transportation is often used on water?',
      options: ['Car', 'Bicycle', 'Boat', 'Motorcycle'],
      correctAnswer: 'Boat',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 7: Which type of vehicle is used for aerial travel?',
      options: ['Bus', 'Helicopter', 'Train', 'Car'],
      correctAnswer: 'Helicopter',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 8: Which mode of transportation is powered by human pedaling?',
      options: ['Car', 'Motorcycle', 'Bicycle', 'Train'],
      correctAnswer: 'Bicycle',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 9: Which mode of transportation is used for traveling between continents?',
      options: ['Submarine', 'Car', 'Airplane', 'Bicycle'],
      correctAnswer: 'Airplane',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 10: What type of vehicle is used for carrying large groups of people?',
      options: ['Car', 'Bus', 'Motorcycle', 'Bicycle'],
      correctAnswer: 'Bus',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 11: Which mode of transportation uses tracks and has wagons?',
      options: ['Bicycle', 'Car', 'Boat', 'Train'],
      correctAnswer: 'Train',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 12: What type of vehicle is used for carrying heavy cargo?',
      options: ['Bicycle', 'Truck', 'Car', 'Train'],
      correctAnswer: 'Truck',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 13: What mode of transportation uses rotating blades to fly?',
      options: ['Train', 'Car', 'Helicopter', 'Bicycle'],
      correctAnswer: 'Helicopter',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 14: What mode of transportation is used for space travel?',
      options: ['Car', 'Airplane', 'Rocket', 'Bicycle'],
      correctAnswer: 'Rocket',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 15: What type of vehicle is used for exploring underwater?',
      options: ['Car', 'Submarine', 'Airplane', 'Train'],
      correctAnswer: 'Submarine',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 16: What is a common mode of transportation in cities with canals?',
      options: ['Car', 'Bicycle', 'Bus', 'Boat'],
      correctAnswer: 'Boat',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 17: What type of vehicle is used for fast travel on land?',
      options: ['Bicycle', 'Car', 'Train', 'Motorcycle'],
      correctAnswer: 'Car',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 18: Which mode of transportation uses horse-drawn carriages?',
      options: ['Bicycle', 'Car', 'Bus', 'Horse Cart'],
      correctAnswer: 'Horse Cart',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 19: What type of vehicle is used for emergency medical transportation?',
      options: ['Bus', 'Bicycle', 'Car', 'Ambulance'],
      correctAnswer: 'Ambulance',
      selectedAnswer: '',
    ),
    MCQQuestionData(
      question: 'Question 20: Which mode of transportation is used for carrying people and goods over water?',
      options: ['Bicycle', 'Boat', 'Airplane', 'Train'],
      correctAnswer: 'Boat',
      selectedAnswer: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Written Test'),
      ),
      body: ListView.builder(
        itemCount: mcqData.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mcqData[index].question,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: mcqData[index]
                        .options
                        .map(
                          (option) => RadioListTile<String>(
                        title: Text(option),
                        value: option,
                        groupValue: mcqData[index].selectedAnswer,
                        onChanged: (value) {
                          setState(() {
                            mcqData[index].selectedAnswer = value;
                          });
                        },
                        activeColor: mcqData[index].selectedAnswer == mcqData[index].correctAnswer
                            ? Colors.blue
                            : Colors.red,
                      ),
                    )
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  mcqData[index].selectedAnswer!.isNotEmpty &&
                      mcqData[index].selectedAnswer == mcqData[index].correctAnswer
                      ? const Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Correct',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  )
                      : mcqData[index].selectedAnswer!.isNotEmpty
                      ? Row(
                    children: [
                      const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Wrong. Correct answer: ${mcqData[index].correctAnswer}',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  )
                      : Container(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MCQQuestionData {
  final String question;
  final List<String> options;
  final String correctAnswer;
  String? selectedAnswer;

  MCQQuestionData({
    required this.question,
    required this.options,
    required this.correctAnswer,
    this.selectedAnswer = '',
  });
}
