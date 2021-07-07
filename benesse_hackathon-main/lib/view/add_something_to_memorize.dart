import 'package:ebimemo/const/const_subject.dart';
import 'package:ebimemo/view/view_add_subject.dart';
import 'package:flutter/material.dart';
import 'package:ebimemo/view/view_subject.dart';
import 'package:ebimemo/model/model_question.dart';

class AddSubjectToMemorize extends StatelessWidget {
  AddSubjectToMemorize({Key? key}) : super(key: key);

  final TextEditingController myControllerA = TextEditingController();
  final TextEditingController myControllerB = TextEditingController();
  String _question = '';
  String _answer = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('問題と解答追加'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                //maxLengthEnforcement: MaxLengthEnforcement.enforced,
                controller: myControllerA,
                enabled: true,
                maxLength: 20,
                autofocus: true,
                style: const TextStyle(color: Colors.red),
                obscureText: false,
                maxLines: 1,
                onChanged: (String _textA) {
                  _question = _textA;
                },
                decoration: const InputDecoration(
                  hintText: 'Input Text',
                  border: OutlineInputBorder(),
                  labelText: '問題内容',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                //maxLengthEnforcement: MaxLengthEnforcement.enforced,
                controller: myControllerB,
                enabled: true,
                maxLength: 20,
                autofocus: true,
                style: const TextStyle(color: Colors.red),
                obscureText: false,
                maxLines: 1,
                onChanged: (String _textB) {
                  _answer = _textB;
                },
                decoration: const InputDecoration(
                  hintText: 'Input Text',
                  border: OutlineInputBorder(),
                  labelText: '解答内容',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  QuestionSet set = QuestionSet(_question,_answer);
                  Navigator.pop(context, set);
                  },
                child: const Text('登録'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
