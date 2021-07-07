import 'package:ebimemo/model/model_question.dart';
import 'package:ebimemo/view/view_subject.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Details extends StatefulWidget {
  final QuestionSet set;

  const Details({Key? key, required this.set}) : super(key: key);

  @override
  _DeteilsState createState() => _DeteilsState();
}

class _DeteilsState extends State<Details> {
  int flag = 0;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.quiz_outlined,
                    color: Colors.teal,
                  ),
                  title: Text(
                    widget.set.question,
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.question_answer_outlined,
                    color: Colors.teal,
                  ),
                  title: Text(
                    widget.set.answer,
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Row(
              children: <Widget>[
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("できた"),
                    secondary: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: flag == 2 ? Colors.blue[700] : Colors.grey[500],
                    ),
                    value: flag == 2,
                    onChanged: (value) {
                      flag == 0 || flag == 1 ? flag = 2 : flag = 0;
                      setState(() {});
                    },
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("まだ"),
                    secondary: Icon(
                      Icons.thumb_down_off_alt_outlined,
                      color: flag == 1 ? Colors.red[700] : Colors.grey[500],
                    ),
                    value: flag == 1,
                    onChanged: (value) {
                      flag == 0 || flag == 2 ? flag = 1 : flag = 0;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
