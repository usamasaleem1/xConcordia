import 'package:flutter/material.dart';

class musicWidget extends StatelessWidget {
  const musicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double categoryHeight = 200;
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 15),
      height: categoryHeight,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(150, 20, 175, 64),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: const Color.fromARGB(55, 255, 255, 255),
          width: 2,
        ),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 44, 231, 181),
            Color.fromARGB(255, 14, 148, 76)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              "Class Name",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Class Desc",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            Spacer(),
            Text(
              "time - time",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "room",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
