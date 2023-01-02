import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DiscordPage extends StatelessWidget {
  const DiscordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: false, //always show scrollbar
        thickness: 2, //width of scrollbar
        radius: const Radius.circular(30), //corner radius of scrollbar
        interactive: true,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10, bottom: 20),
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
                        '🤝🏼 General',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
//      //                    color: Color.fromARGB(255, 33, 36, 39),
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
                          //                         foregroundColor: MaterialStateProperty.all<Color>(
                          //                             const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://discord.gg/concoengrcs');
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
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://discord.gg/tEPXBXkqzc');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Official ConU Discord'),
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
                  '📖 Department and Faculty Discords',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
//                    color: Color.fromARGB(255, 33, 36, 39),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: const Text(
                  'Find your department or faculty discord here!',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                //department and faculty discord buttons
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 15, top: 5),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/TvxCDPJLzM');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Anthropology • Sociology'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/K24wc1Qhy3');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Biochemistry • Biology • Chemistry'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/-dWTS2L4iw');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Classics'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/tUaFX0L0Uk');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Communication Studies'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/b4WxyS1Fd4');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Engineering'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/9g1kQtGrn7');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('English'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/2P6WRtEQKu');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Film Animation and Production'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/hGrsqvqirX');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Environmental and Urban Studies'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/W_ZA5phC88');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Fine Arts'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/YAnIX9WvuS');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('History'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/TpIHZ56AoE');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('JMSB 🤑'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/WfhtvWOAfN');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Journalism'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/T10jIfR3hc');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Mathematics • Statistics'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/v4b8xgb2lx');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Physics'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/v9aclOKgvr');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Speech Language Pathology'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/s1uv5O-r-R');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('TESL: English as 2nd Language'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //clubs title
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: const Text(
                  '🎉 Clubs Discords',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
//                    color: Color.fromARGB(255, 33, 36, 39),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: const Text(
                  'Join CSU Clubs & Student Associations',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                //department and faculty discord buttons
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 15, top: 5),
                      child: OutlinedButton(
                        style: ButtonStyle(
                          //                         foregroundColor: MaterialStateProperty.all<Color>(
                          //                             const Color.fromARGB(255, 33, 36, 39)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(200, 50)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              side: const BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/VZcajHdV08');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Film Animation'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/qFEneZuVzV');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('CCAS (Canadian Asian Society)'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/EbhN0Nf-ao');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Cinema Student Alliance'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/inW1ChgbiJ');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Comic Book Club'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/cTGIGHrjQu');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Game Development'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/lfGbxX5UnB');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('CUTV'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/-LAQ6fhxc9');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Debate Society'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/mGJB5B3gMW');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('ECA (Eng+Comp Sci Assocication) '),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/Sne2wqo1oA');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('e-Sports Club'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/3FfmxCQ2vx');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Fine Arts Club'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/mhZHHC_GMF');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Games Club'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/4uaFdyt8E6');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Katalis (STEM Representation Club)'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/cLoW8nzENz');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('K-POP Club'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/GzUcSZnEDO');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Th3rdPlace Social'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://tr.ee/v9aclOKgvr');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('UpStart: Gina Cody Entrepreneurship'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: OutlinedButton(
                        style: ButtonStyle(
//                            foregroundColor: MaterialStateProperty.all<Color>(
//                               const Color.fromARGB(255, 33, 36, 39)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://discord.gg/C56re53ZB3');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Badminton Club'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
