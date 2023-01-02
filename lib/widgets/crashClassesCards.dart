import 'package:flutter/material.dart';

class crashClassesCards extends StatefulWidget {
  const crashClassesCards({Key? key}) : super(key: key);

  @override
  State<crashClassesCards> createState() => _crashClassesCardsState();
}

class _crashClassesCardsState extends State<crashClassesCards> {
  @override
  Widget build(BuildContext context) {
    double height = 10;
    double width = 10;
    double cornerRadius = 20;
    var borderWidth = 2.5;
    return Row(
      //the webster, grey, vannier square cards
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'Webster',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'test1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(
                'test2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(170, 255, 255, 255),
                ),
              ),
            ],
          ),
          height: height,
          width: width,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(150, 255, 88, 11),
                offset: Offset(0, 5),
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.circular(cornerRadius),
            border: Border.all(
              color: const Color.fromARGB(55, 255, 255, 255),
              width: borderWidth,
            ),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 249, 174, 63),
                Color.fromARGB(255, 245, 87, 55),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ],
    );
  }
}
