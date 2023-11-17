// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Course1TimelineStruct extends FFFirebaseStruct {
  Course1TimelineStruct({
    String? course1Title,
    String? course1Picture,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _course1Title = course1Title,
        _course1Picture = course1Picture,
        super(firestoreUtilData);

  // "course1_title" field.
  String? _course1Title;
  String get course1Title => _course1Title ?? '';
  set course1Title(String? val) => _course1Title = val;
  bool hasCourse1Title() => _course1Title != null;

  // "course1_picture" field.
  String? _course1Picture;
  String get course1Picture => _course1Picture ?? '';
  set course1Picture(String? val) => _course1Picture = val;
  bool hasCourse1Picture() => _course1Picture != null;

  static Course1TimelineStruct fromMap(Map<String, dynamic> data) =>
      Course1TimelineStruct(
        course1Title: data['course1_title'] as String?,
        course1Picture: data['course1_picture'] as String?,
      );

  static Course1TimelineStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? Course1TimelineStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'course1_title': _course1Title,
        'course1_picture': _course1Picture,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'course1_title': serializeParam(
          _course1Title,
          ParamType.String,
        ),
        'course1_picture': serializeParam(
          _course1Picture,
          ParamType.String,
        ),
      }.withoutNulls;

  static Course1TimelineStruct fromSerializableMap(Map<String, dynamic> data) =>
      Course1TimelineStruct(
        course1Title: deserializeParam(
          data['course1_title'],
          ParamType.String,
          false,
        ),
        course1Picture: deserializeParam(
          data['course1_picture'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Course1TimelineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Course1TimelineStruct &&
        course1Title == other.course1Title &&
        course1Picture == other.course1Picture;
  }

  @override
  int get hashCode => const ListEquality().hash([course1Title, course1Picture]);
}

Course1TimelineStruct createCourse1TimelineStruct({
  String? course1Title,
  String? course1Picture,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Course1TimelineStruct(
      course1Title: course1Title,
      course1Picture: course1Picture,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Course1TimelineStruct? updateCourse1TimelineStruct(
  Course1TimelineStruct? course1Timeline, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    course1Timeline
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCourse1TimelineStructData(
  Map<String, dynamic> firestoreData,
  Course1TimelineStruct? course1Timeline,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (course1Timeline == null) {
    return;
  }
  if (course1Timeline.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && course1Timeline.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final course1TimelineData =
      getCourse1TimelineFirestoreData(course1Timeline, forFieldValue);
  final nestedData =
      course1TimelineData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = course1Timeline.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCourse1TimelineFirestoreData(
  Course1TimelineStruct? course1Timeline, [
  bool forFieldValue = false,
]) {
  if (course1Timeline == null) {
    return {};
  }
  final firestoreData = mapToFirestore(course1Timeline.toMap());

  // Add any Firestore field values
  course1Timeline.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCourse1TimelineListFirestoreData(
  List<Course1TimelineStruct>? course1Timelines,
) =>
    course1Timelines
        ?.map((e) => getCourse1TimelineFirestoreData(e, true))
        .toList() ??
    [];
