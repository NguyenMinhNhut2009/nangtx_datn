void add_answers(bool i) {
  Answers.add(i);
}

void clear_answers() {
  Answers.clear();
}

List<bool> Answers = [];

class Asignment {
  final String questions;
  final List<String> option;
  final String answer;
  final String note;

  Asignment(
      {required this.answer,
      required this.note,
      required this.option,
      required this.questions});
}
