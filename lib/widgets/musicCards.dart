import 'package:flutter/material.dart';
import '../widgets/musicWidget.dart';

class crashClassesCards extends StatefulWidget {
  const crashClassesCards({Key? key}) : super(key: key);

  @override
  State<crashClassesCards> createState() => _crashClassesCardsState();
}

class _crashClassesCardsState extends State<crashClassesCards> {
  @override
  Widget build(BuildContext context) {
    double categoryHeight = 200;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.only(left: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: const <Widget>[
              musicWidget(),
              musicWidget(),
              musicWidget(),
              musicWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
