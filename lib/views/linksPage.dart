import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class notesPage extends StatelessWidget {
  const notesPage({Key? key}) : super(key: key);

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
                                    side:
                                        const BorderSide(color: Colors.red)))),
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
                                    side:
                                        const BorderSide(color: Colors.red)))),
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
                                    side:
                                        const BorderSide(color: Colors.red)))),
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
                                    side:
                                        const BorderSide(color: Colors.red)))),
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
                  'The garbage replacement for myConcordia. A place to find your grades, schedule, and more.',
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
                                    side:
                                        const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse('https://hub.concordia.ca/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url,
                                mode: LaunchMode.externalApplication);
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
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: const Text(
                  '📈 Grades',
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
                  'Quick access to your grades ',
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
                                    side:
                                        const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse(
                              'https://campus.concordia.ca/psp/pscsprd/EMPLOYEE/SA/c/SA_LEARNER_SERVICES.SSR_SSENRL_GRADE.GBL?PORTALPARAM_PTCNAV=HC_SSR_SSENRL_GRADE_GBL&EOPP.SCNode=SA&EOPP.SCPortal=EMPLOYEE&EOPP.SCName=ADMN_APPSIAN_ACADEMIC&EOPP.SCLabel=&EOPP.SCPTcname=ADMN_SC_SP_APPSIAN_ACADEMIC&FolderPath=PORTAL_ROOT_OBJECT.PORTAL_BASE_DATA.CO_NAVIGATION_COLLECTIONS.ADMN_APPSIAN_ACADEMIC.ADMN_S202006041619154936397650&IsFolder=false/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url,
                                mode: LaunchMode.externalApplication);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('View Grades'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: const Text(
                  '📆 Class Schedule',
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
                  'Quick access to your schedule ',
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
                                    side:
                                        const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse(
                              'https://campus.concordia.ca/psp/pscsprd/EMPLOYEE/SA/c/SA_LEARNER_SERVICES.SSR_SSENRL_LIST.GBL?PORTALPARAM_PTCNAV=HC_SSR_SSENRL_LIST&EOPP.SCNode=SA&EOPP.SCPortal=EMPLOYEE&EOPP.SCName=ADMN_APPSIAN_ENROL&EOPP.SCLabel=&EOPP.SCPTcname=ADMN_SC_SP_APPSIAN_ENROL&FolderPath=PORTAL_ROOT_OBJECT.PORTAL_BASE_DATA.CO_NAVIGATION_COLLECTIONS.ADMN_APPSIAN_ENROL.ADMN_S202006041629039288786989&IsFolder=false/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url,
                                mode: LaunchMode.externalApplication);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('See Schedule'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: const Text(
                  '✍🏼 Exam Schedule',
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
                  'Quick access to your exam schedule',
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
                                    side:
                                        const BorderSide(color: Colors.red)))),
                        onPressed: () async {
                          // Open the link in the browser
                          Uri url = Uri.parse(
                              'https://campus.concordia.ca/psp/pscsprd/EMPLOYEE/SA/c/SA_LEARNER_SERVICES.SSR_SSENRL_EXAM_L.GBL?PORTALPARAM_PTCNAV=HC_SSR_SSENRL_EXAM_L_GBL&EOPP.SCNode=SA&EOPP.SCPortal=EMPLOYEE&EOPP.SCName=ADMN_APPSIAN_ACADEMIC&EOPP.SCLabel=&EOPP.SCPTcname=ADMN_SC_SP_APPSIAN_ACADEMIC&FolderPath=PORTAL_ROOT_OBJECT.PORTAL_BASE_DATA.CO_NAVIGATION_COLLECTIONS.ADMN_APPSIAN_ACADEMIC.ADMN_S202006041623081799179218&IsFolder=false/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url,
                                mode: LaunchMode.externalApplication);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Text('View Exams'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //footer with my social link
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        OutlinedButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 57, 114, 171),
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                  const Size(150, 35)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28.0),
                                      side: const BorderSide(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255))))),
                          onPressed: () async {
                            // Open the link in the browser
                            Uri url = Uri.parse(
                                'https://discordapp.com/users/226787264452100097');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url,
                                  mode: LaunchMode.externalApplication);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: const [
                              Icon(Icons.discord),
                              Text(
                                '   Hit me up to request a feature!',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
