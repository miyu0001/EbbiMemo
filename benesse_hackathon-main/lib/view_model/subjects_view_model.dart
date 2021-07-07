import 'package:ebimemo/model/model_subjects/subjects.dart';
import 'package:ebimemo/subjects_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SubjectsViewModel extends StateNotifier<SubjectsState>{
  SubjectsViewModel() : super(const SubjectsState());

  void createSubjects(String title){
    final id = state.subjectList.length + 1;
    final newList = [...state.subjectList, Subject(id, title)];
    state = state.copyWith(subjectList: newList);
  }

  void updateSubjects(int id, String title){
    final newList = state.subjectList
        .map((subject) => subject.id == id ? Subject(id, title) : subject)
        .toList();
    state = state.copyWith(subjectList: newList);
  }

  void deleteSubject(int id){
    final newList = state.subjectList.where((subject) => subject.id != id).toList();
    state = state.copyWith(subjectList: newList);
  }
}