import 'package:ebimemo/model/model_subjects/subjects.dart';
import 'package:ebimemo/view_model/subjects_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final subjectsViewModelProvider =
StateNotifierProvider((ref) => SubjectsViewModel());

class SubjectsList extends HookWidget{
  const SubjectsList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('EbbiMemo'),
            leading: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {  },
            ),
          ),
          body: _buildList(),
        )
    );
  }

  Widget _buildList(){
    final state = useProvider(subjectsViewModelProvider);
    final _subjectsList = state.subjectList;

    return ListView.builder(
      padding: const EdgeInsets.all(16),
        itemCount: _subjectsList.length,
        itemBuilder: (context,index) {
        return _dismissible(_subjectsList[index],context);
        }
    );
  }

  Widget _dismissible(Subject subject, BuildContext context){
    return Dismissible(
        key: UniqueKey(),
        onDismissed: (DismissDirection direction) {
          context.read(subjectsViewModelProvider).deleteSubject(subject.id);
          Fluttertoast.showToast(
              msg: '${subject.title} is deleted',
              backgroundColor: Colors.grey
          );
        },
        background: Container(
          alignment: Alignment.centerLeft,
          child: const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
        child: _subjectItem(subject, context)
    );
  }

  Widget _subjectItem(Subject subject, BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
      ),
      child: ListTile(
        title: Text(
            subject.title,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}