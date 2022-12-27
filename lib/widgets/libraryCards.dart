import '../views/home_page.dart';
import 'package:flutter/material.dart';

class libCards extends StatelessWidget {
  double height = 140;
  double width = 115;
  double cornerRadius = 35;

  @override
  Widget build(BuildContext context) {
    return Row(
      //the webster, grey, vannier square cards
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Webster',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                webOccupancy,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(
                webLevel,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                color: Color.fromARGB(109, 255, 88, 11),
                offset: Offset(0, 5),
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.circular(cornerRadius),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 252, 151, 0),
                Color.fromARGB(255, 245, 67, 55),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Grey Nuns',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                greyOccupancy,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                greyLevel,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                color: Color.fromARGB(120, 2, 83, 141),
                offset: Offset(0, 5),
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.circular(cornerRadius),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 18, 179, 200),
                Color.fromARGB(255, 0, 95, 136),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Vanier',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                vannierOccupancy,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                vannierLevel,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                color: Color.fromARGB(123, 20, 175, 64),
                offset: Offset(0, 5),
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.circular(cornerRadius),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 25, 207, 159),
                Color.fromARGB(255, 33, 147, 57)
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
