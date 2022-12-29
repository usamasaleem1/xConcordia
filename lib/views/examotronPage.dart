import 'package:flutter/material.dart';

class ExamotronPage extends StatelessWidget {
  const ExamotronPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Examotron'),
        ),
      ),
    );
  }
}
