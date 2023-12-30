import 'package:flutter/material.dart';

class News extends StatelessWidget {
  // Constructor without the const keyword
  News({Key? key}) : super(key: key);

  // Sample Nepali news
  List<String> nepaliNews = [
    '1. सवारी चालक अनुमितपत्रको अनलाईन राजश्व भुक्तानी सहितको विद्युतीय सेवा प्रवाह |',
    '2. महानिर्देशक श्री नारायण प्रसाद भट्टराईज्यूको फेरी भेटौंला तथा लेखा अधिकृत श्री प्रेम बहादुर चन्दज्यूको निवृत्त कार्यक्रमका पलहरु ।',
    '3. महानिर्देशक श्री नारायण प्रसाद भट्टराईज्यूको फेरी भेटौंला तथा लेखा अधिकृत श्री प्रेम बहादुर चन्दज्यूको निवृत्त कार्यक्रमका पलहरु ।',
    '4. मिति २०८० श्रावन ०१ गते देखि लागु हुने अन्तर प्रदेश संचालन हुने सार्वजनिक यात्रु तथा मालवाहक सवारी साधनको नयाँ भाडा दर सम्बन्धि अत्यन्त जरुरी सूचना ।',
    '5. Supply, Delivery and Installation of Web Camera and Signature Pad स्वीकृत गर्ने आशयको सूचना ।',
    '6. मिति २०८० जेठ ०३ गते देखि लागु हुने अन्तर प्रदेश संचालन हुने सार्वजनिक यात्रु तथा मालवाहक सवारी साधनको नयाँ भाडा दर सम्बन्धि अत्यन्त जरुरी सूचना ।',
    '7. सवारी चालक अनुमतिपत्र सम्बन्धी अनलाईन आवेदन दर्ता प्रणालीको सेवा सुचारु हुने सम्बन्धी सूचना ।',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Welcome To News Section',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: nepaliNews.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    nepaliNews[index],
                    style: TextStyle(fontSize: 16),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
