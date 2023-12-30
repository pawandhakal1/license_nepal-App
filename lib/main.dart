import 'package:flutter/material.dart';
import 'package:license_nepal/ColorVisionTest_Page/UI/colorvision.dart';
import 'package:license_nepal/ImportantTopic_page/UI/importanttopic.dart';
import 'package:license_nepal/News_Page/UI/news.dart';
import 'package:license_nepal/OnlineForm_Page/UI/onlineform.dart';
import 'package:license_nepal/ExamPreparation_Page/UI/exampreparation.dart';
import 'package:license_nepal/TrafficSign_Page/UI/trafficsign.dart';
import 'package:license_nepal/Trial_Page/UI/trial.dart';
import 'package:license_nepal/WrittenResult_Page/UI/writtenresult.dart';
import 'package:license_nepal/WrittenTest_Page/UI/writtentest.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
  runApp(const LicenseNepal());
}

class LicenseNepal extends StatelessWidget {
  const LicenseNepal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "License Nepal",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/pageExamPreparation': (context) => const ExamPreparation(),
        '/pageWrittenTest': (context) => const WrittenTest(),
        '/pageTrafficSign': (context) => const TrafficSign(),
        '/pageImportantTopic': (context) => const ImportantTopic(),
        '/pageWrittenResult': (context) => const WrittenResult(),
        '/pageColorVisionTest': (context) => const COlorVisionTest(),
        '/pageTrial': (context) => Trial(),
        '/pageNews': (context) => News(),
        '/pageOnlineForm': (context) => const OnlineForm(),
      },
    );
  }
}

class  HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0091EA),
        appBar: AppBar(title: const Text('License Nepal'), actions: [
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
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Trial'),
                onTap: () {
                  Navigator.pushNamed(context, '/pageTrial');
                },
              ),
              ListTile(
                title: const Text('News'),
                onTap: () {
                  Navigator.pushNamed(context, '/pageNews');
                },
              ),
              ListTile(
                title: const Text(
                  'Online Form',
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/pageOnlineForm');
                },
              ),
            ],
          ),
        ),
        body: GridView.count(crossAxisCount: 2, children: [
          GridItem('Exam Preparation', Icons.book_sharp,
              '/pageExamPreparation'),
          GridItem('Written Test', Icons.assignment, '/pageWrittenTest'),
          GridItem('Traffic Sign', Icons.traffic, '/pageTrafficSign'),
          GridItem('Important Topic', Icons.auto_stories, '/pageImportantTopic'),
          GridItem('Written Result', Icons.emoji_events_rounded, '/pageWrittenResult'),
          GridItem('Color Vision Test', Icons.remove_red_eye_sharp,
              '/pageColorVisionTest'),

          // GridItem('Trial', Icons.bike_scooter, '/pageTrial'),
          // GridItem('News', Icons.newspaper, '/pageNews'),
          // GridItem('OnlineForm', Icons.online_prediction, '/pageOnlineForm'),
        ]),
        // bottomNavigationBar: BottomAppBar(
        //   color: Colors.lightBlueAccent,
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 20, right: 100, top: 6, bottom: 6),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         IconButton(
        //             onPressed: () {},
        //             icon: const Icon(
        //               Icons.home,
        //               color: Colors.white,
        //               size: 35,
        //             )),
        //         IconButton(
        //             onPressed: () {},
        //             icon: const Icon(
        //               Icons.card_membership,
        //               color: Colors.white,
        //               size: 35,
        //             )),
        //         IconButton(
        //             onPressed: () {},
        //             icon: const Icon(
        //               Icons.person,
        //               color: Colors.white,
        //               size: 35,
        //             )),
        //
        //       ],
        //     ),
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.lightBlueAccent,
        //   child: IconButton(
        //       onPressed: () {},
        //       icon:const Icon(
        //         Icons.phone,
        //         color: Colors.white,
        //         size: 40,
        //       )),
        // )
    );
  }
}

class GridItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final String route;

  GridItem(this.label, this.icon, this.route);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
