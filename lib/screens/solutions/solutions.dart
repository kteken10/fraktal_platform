import 'package:flutter/material.dart';

class SolutionsPage extends StatelessWidget {
  const SolutionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solutions'),
      ),
      body: const Center(
        child: Text('Voici la page des solutions.'),
      ),
    );
  }
}
