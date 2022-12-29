import 'package:flutter/material.dart';

class notesPage extends StatelessWidget {
  const notesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Notes'),
        ),
      ),
    );
  }
}
