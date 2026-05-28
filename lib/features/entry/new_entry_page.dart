import 'package:flutter/material.dart';

class NewEntryPage extends StatelessWidget {
  const NewEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Entry')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(child: Text('Create a new journal entry')),
      ),
    );
  }
}
