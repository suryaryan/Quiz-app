import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen(this.startQuiz, {super.key});
  final Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/1328866.png', width: 500),
          const Text(
            'Quiz',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(Icons.arrow_forward_ios_sharp),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.amber),
            label: const Text('start'),
          ),
        ],
      ),
    );
  }
}
