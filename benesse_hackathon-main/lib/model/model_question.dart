class QuestionSet{
  String question;
  String answer;
  QuestionSet(this.question,this.answer);
}

class SetList{
  static List<QuestionSet> set = [
    QuestionSet('円周率はどのくらい?', '3.14159265358979323'),
    QuestionSet('ルート3はどのくらい?', '1.7320508'),
    QuestionSet('91は素数?', '素数じゃない')
  ];
}