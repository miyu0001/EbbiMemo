import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddSubject extends StatefulWidget {
  const AddSubject({Key? key}) : super(key: key);

  @override
  _AddSubjectState createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {
  String _subject = '';
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('科目追加')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: TextField(
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  controller: myController,
                  enabled: true,
                  maxLength: 20,
                  autofocus: true,
                  style: const TextStyle(color: Colors.red),
                  obscureText: false,
                  maxLines: 1,
                  onChanged: (String _text) {
                    _subject = _text;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Input Text',
                    border: OutlineInputBorder(),
                    labelText: '科目名',
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('登録'),
              onPressed: () {
                Navigator.pop(context, _subject);
              },
            ),
          ],
        ),
      ),
    );
  }
}
