import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class notesPage extends StatelessWidget {
  const notesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, bottom: 20),
        child: Column(
          children: [
            Container(
              //Anthony's Notes
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      '🤝🏼 Anthony\'s Notes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(255, 33, 36, 39),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: const Text(
                'The GOAT.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //button 1
                    padding: const EdgeInsets.only(bottom: 5),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(150, 40)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://anthonyf.io/notes/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('View Notes'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: const Text(
                '📝 Examotron',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 33, 36, 39),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: const Text(
                'Student made notes, past exams, and more!',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //button 1
                    padding: const EdgeInsets.only(bottom: 5, top: 5),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(150, 40)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://examotron.com/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Examotron'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: const Text(
                '🎓 ConU Master Guide',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 33, 36, 39),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 5, right: 50),
              child: const Text(
                'Concordia student guide compiled with tips from Reddit and personal advice.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //button 1
                    padding: const EdgeInsets.only(bottom: 5, top: 5),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(150, 40)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse(
                            'https://airi-14x.github.io/Concordia-Master-Guide/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Guide'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: const Text(
                '📨 Ask an Advisor',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 33, 36, 39),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 5, right: 50),
              child: const Text(
                'Get a quick answer from a Concordia student advisor. A sort of hotline for students.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //button 1
                    padding: const EdgeInsets.only(bottom: 5, top: 5),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(150, 40)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse(
                            'https://www.concordia.ca/admissions/questions/questions-newly-admitted/advising-registration/adv-reg-questions.html');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Ask'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: const Text(
                '🏫 Student Hub',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 33, 36, 39),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 5, right: 50),
              child: const Text(
                'The dumb replacement for myConcordia. A place to find your grades, schedule, and more.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //button 1
                    padding: const EdgeInsets.only(bottom: 5, top: 5),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(150, 40)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://hub.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Student Hub'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
