class quizQuestions {
  quizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getshuffleans() {
    final shufflelist = List.of(answers);
    shufflelist..shuffle();
    return shufflelist;
  }
}
