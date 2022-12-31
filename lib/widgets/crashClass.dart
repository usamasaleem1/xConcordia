// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xconcordia/models/courses.dart';

Color textColor = const Color.fromARGB(255, 33, 36, 39);

// ignore: camel_case_types
class crashClass extends StatefulWidget {
  const crashClass({Key? key}) : super(key: key);

  @override
  State<crashClass> createState() => _crashClassState();
}

// ignore: camel_case_types
class _crashClassState extends State<crashClass> {
  late List<Courses> courses;
  bool isLoading = true;
  bool scienceVis = true;
  bool codingVis = false;
  bool artVis = false;
  bool musicVis = false;
  bool historyVis = false;
  @override
  void initState() {
    super.initState();
    loadCourses();
  }

  void loadCourses() async {
    String jsonString = await rootBundle.loadString('assets/classes.json');
    courses = coursesFromJson(jsonString);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    while (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Column(
      // the title "Library Stats", and the last updated time, and live count text
      children: [
        Container(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Crash a Class 📖',
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
          padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
          child: const Text(
            'Bored on break? Join a random class happening live!',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        scienceVis = true;
                        codingVis = false;
                        artVis = false;
                        musicVis = false;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: BorderSide(
                        width: 1.5,
                        color: scienceVis
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade300,
                      ),
                    ),
                    child: const Text("🧪 Science"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        scienceVis = false;
                        codingVis = true;
                        artVis = false;
                        musicVis = false;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: BorderSide(
                        width: 1.5,
                        color: codingVis
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade300,
                      ),
                    ),
                    child: const Text("💻 Coding"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        scienceVis = false;
                        codingVis = false;
                        artVis = true;
                        musicVis = false;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: BorderSide(
                        width: 1.5,
                        color: artVis
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade300,
                      ),
                    ),
                    child: const Text("🎨 Art"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        scienceVis = false;
                        codingVis = false;
                        artVis = false;
                        musicVis = true;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: BorderSide(
                        width: 1.5,
                        color: musicVis
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade300,
                      ),
                    ),
                    child: const Text("🎵 Music"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: BorderSide(
                        width: 1.5,
                        color: historyVis
                            ? Colors.lightBlueAccent
                            : Colors.grey.shade300,
                      ),
                    ),
                    child: const Text("📜 History"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: const Text("🦄 Request a Category"),
                  ),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: scienceVis,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Science Visible: ' + courses[0].classEndTime.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(102, 0, 0, 0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Visibility(
          visible: codingVis,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Coding Visible: ' + courses[0].classEndTime.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(102, 0, 0, 0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Visibility(
          visible: artVis,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Art Visible: ' + courses[0].classEndTime.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(102, 0, 0, 0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Visibility(
          visible: musicVis,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Music Visible: ' + courses[0].classEndTime.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(102, 0, 0, 0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
