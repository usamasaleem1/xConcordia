import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DiscordPage extends StatelessWidget {
  const DiscordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //find people title
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      '🤝🏼 Find People',
                      style: TextStyle(
                        fontSize: 26,
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
                'Did you know almost every class has a discord?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              //find people buttons
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //button 1
                    padding: const EdgeInsets.only(bottom: 15, top: 5),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://www.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('ENCS - Conco University MTL'),
                    ),
                  ),
                  Container(
                    //button 2
                    padding: const EdgeInsets.only(bottom: 15),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://www.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Student Hub - ConU'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //rogue discord title
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: const Text(
                '☠️ Rogue Discords',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 33, 36, 39),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: const Text(
                'Student run. Student made. Student owned.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              //rogue discord buttons
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 15, top: 5),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://www.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('ENCS - Conco University MTL'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://www.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Student Hub - ConU'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://www.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Student Hub - ConU'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://www.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Student Hub - ConU'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://www.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Student Hub - ConU'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.red)))),
                      onPressed: () async {
                        // Open the link in the browser
                        Uri url = Uri.parse('https://www.concordia.ca/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Text('Student Hub - ConU'),
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
