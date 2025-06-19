class QuizQuestion {
  const QuizQuestion({required this.question, required this.options});

  final String question;
  final List<String> options;

  List<String> getShuffledList() {
    final shuffledOptions = List.of(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}
