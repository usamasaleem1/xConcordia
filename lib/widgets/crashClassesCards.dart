import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class crashClassesCards extends StatelessWidget {
  const crashClassesCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        'Art Visible: ',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(102, 0, 0, 0),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
