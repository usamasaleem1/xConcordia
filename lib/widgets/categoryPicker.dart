// ignore: file_names
import 'package:flutter/material.dart';

Color textColor = const Color.fromARGB(255, 33, 36, 39);

// ignore: camel_case_types
class categoryPicker extends StatelessWidget {
  const categoryPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: const Text(
                'Bored on break? Join a random class!',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
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
                      //yo here
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                    child: const Text("🧪 Science"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                    child: const Text("💻 Coding"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                    child: const Text("🎨 Art"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                    ),
                    child: const Text("🎵 Music"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
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
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: const Text(
            'Feature Coming Soon.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(102, 0, 0, 0),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
