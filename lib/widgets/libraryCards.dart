import '../views/home_page.dart';
import 'package:flutter/material.dart';

class libCards extends StatelessWidget {
  double height = 135;
  double width = 110;
  double cornerRadius = 35;
  double borderWidth = 2.5;

  libCards({Key? key}) : super(key: key);

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
              if (webOccupancy == '')
                const LinearProgressIndicator(
                  color: Color.fromARGB(160, 255, 255, 255),
                  minHeight: 2,
                )
              else
              Text(
                webOccupancy,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
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
              if (greyLevel == '')
                const LinearProgressIndicator(
                  color: Color.fromARGB(160, 255, 255, 255),
                  minHeight: 2,
                )
              else
              Text(
                greyOccupancy,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
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
                color: Color.fromARGB(150, 2, 83, 141),
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
                Color.fromARGB(255, 34, 207, 230),
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
              if (vannierLevel == '')
                const LinearProgressIndicator(
                  color: Color.fromARGB(160, 255, 255, 255),
                  minHeight: 2,
                )
              else
              Text(
                vannierOccupancy,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
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
                color: Color.fromARGB(150, 20, 175, 64),
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
                Color.fromARGB(255, 44, 231, 181),
                Color.fromARGB(255, 14, 148, 76)
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
