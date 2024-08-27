import 'package:flutter/material.dart';

class answer_button extends StatelessWidget {
  answer_button({super.key, required this.anstext, required this.ontap});
  final String anstext;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            backgroundColor: const Color.fromARGB(255, 28, 7, 255),
            foregroundColor: Colors.white),
        child: Text(anstext));
  }
}
