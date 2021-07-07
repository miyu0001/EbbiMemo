import 'package:ebimemo/view/add_something_to_memorize.dart';
import 'package:flutter/material.dart';
import 'view_detail_page.dart';
import '../model/model_question.dart';

class Subject extends StatefulWidget {
  final String subjectName;

  const Subject({Key? key, required this.subjectName}) : super(key: key);

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  final List<QuestionSet> _set = SetList.set;

  void _transitionToAddPage(BuildContext context) async {
    final addedSet = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddSubjectToMemorize(),
        ));
    setState(() {
      _set.add(addedSet);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(actions: <Widget>[
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(
              onPressed: () => _transitionToAddPage(context),
              icon: const Icon(Icons.edit),
            )
          ],
              title: Text(widget.subjectName)),
          body: ListView.separated(
            itemCount: _set.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details(set: _set[index])
                      )
                  );
                },
                title: Text(_set[index].question),
              ),
            separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 0.5),
          )
        ),
    );
  }
}
