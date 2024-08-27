import 'package:flutter/material.dart';
import 'package:test2/answer_button.dart';
import 'package:test2/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onselectans});
  final void Function(String name) onselectans;
  @override
  State<Questions> createState() {
    return _Questionspart();
  }
}

class _Questionspart extends State<Questions> {
  var currquestionidx = 0;
  void answerquestion(String selectedAnswers) {
    widget.onselectans(selectedAnswers);
    setState(() {
      currquestionidx = currquestionidx + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currquestion = questions[currquestionidx];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currquestion.text,
              style: GoogleFonts.lato(
                  color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currquestion.getshuffleans().map((item) {
              return Column(
                children: [
                  answer_button(
                    anstext: item,
                    ontap: () {
                      answerquestion(item);
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
