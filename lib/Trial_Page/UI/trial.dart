import 'package:flutter/material.dart';

class Trial extends StatelessWidget {
   Trial({Key? key}) : super(key: key);

  // Sample Nepali news
  List<String> trialspot = [
    '1.  यातायात व्यवस्था कार्यालय,सवारी, सुनसरी इटहरी Phone No.025581019 |',
    '2.  यातायात व्यवस्था सेवा कार्यालय बिराटनगर, मोरंग Phone No.021421083 ।',
    '3.  यातायात व्यवस्था कार्यालय, मेची बिर्तामोड No.023540264 ।',
    '4.  यातायात व्यवस्था सेवा कार्यालय, इलाम इलाम View Website Phone No.027524997।',
    '5.  यातायात व्यवस्था कार्यालय, सानाठूला (बागमती) एकान्तकुना',
    '6.  यातायात व्यवस्था सेवा कार्यालय, सल्लाघारी सल्लाघारी, भक्तपुर।',
    '7.  यातायात व्यवस्था कार्यालय मोटरसाइकल (बागमती) गुर्जुधारा, चन्द्रागिरी नगरपालिका ।',
    '8.  यातायात व्यवस्था कार्यालय (लाईसेन्स) चाबहिल काठमाडौँ | Phone No.014569508 |',
    '9.  यातायात व्यवस्था कार्यालय, सानाठूला (बागमती) एकान्तकुना |',
    '10. यातायात व्यवस्था कार्यालय, गण्डकी (लाईसेन्स) गण्डकी |',
    '11. यातायात व्यवस्था कार्यालय, बागलुङ बागलुङ, Phone No.068522051,068522133 |',
    '12. यातायात व्यवस्था सेवा कार्यालय,भैरहवा रुपन्देही |',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trial Spot'),
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
                'These are the Trial spot of Nepal ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: trialspot.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    trialspot[index],
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
