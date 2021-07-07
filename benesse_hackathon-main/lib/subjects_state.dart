import 'package:ebimemo/model/model_subjects/subjects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'model/model_subjects/subjects_state.freezed.dart';

@freezed
abstract class SubjectsState with _$SubjectsState {
  const factory SubjectsState({
    @Default(<Subject>[])List<Subject> subjectList,
  }) = _SubjectsState;
}