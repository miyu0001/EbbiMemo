import 'package:ebimemo/const/const_subject.dart';
import 'package:ebimemo/view/view_add_subject.dart';
import 'package:flutter/material.dart';
import 'package:ebimemo/view/view_subject.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static final List<String> _subjects = SubjectsToStudy.subjects;
  bool edit_delete = false;

  void moveToAddPage(BuildContext context) async {
    String _textClone = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AddSubject()));
    setState(() {
      _subjects.add(_textClone);
    });
  }

  void editSubject() {
    setState(() {
      edit_delete = !edit_delete;
    });
  }

  late int n = 0;

  void deleteSubject(int m) {
    setState(() {
      _subjects.removeAt(m);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('EbbiMemo'),
          leading: IconButton(
            onPressed: () => moveToAddPage(context),
            icon: const Icon(Icons.add),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => editSubject(),
              child: const Text('編集'),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: _subjects.length,
          itemBuilder: (context, index) => ListTile(
            trailing: Visibility(
              visible: edit_delete,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  n = index;
                  deleteSubject(n);
                },
                child: const Text('削除'),
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Subject(
                              subjectName: _subjects[index],
                            )));
              },
            ),
            title: Text(_subjects[index]),
          ),
        ),
      ),
    );
  }
}
