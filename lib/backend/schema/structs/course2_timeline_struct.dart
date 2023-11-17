// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Course2TimelineStruct extends FFFirebaseStruct {
  Course2TimelineStruct({
    String? course2Title,
    String? course2Picture,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _course2Title = course2Title,
        _course2Picture = course2Picture,
        super(firestoreUtilData);

  // "course2_title" field.
  String? _course2Title;
  String get course2Title => _course2Title ?? '';
  set course2Title(String? val) => _course2Title = val;
  bool hasCourse2Title() => _course2Title != null;

  // "course2_picture" field.
  String? _course2Picture;
  String get course2Picture => _course2Picture ?? '';
  set course2Picture(String? val) => _course2Picture = val;
  bool hasCourse2Picture() => _course2Picture != null;

  static Course2TimelineStruct fromMap(Map<String, dynamic> data) =>
      Course2TimelineStruct(
        course2Title: data['course2_title'] as String?,
        course2Picture: data['course2_picture'] as String?,
      );

  static Course2TimelineStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? Course2TimelineStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'course2_title': _course2Title,
        'course2_picture': _course2Picture,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'course2_title': serializeParam(
          _course2Title,
          ParamType.String,
        ),
        'course2_picture': serializeParam(
          _course2Picture,
          ParamType.String,
        ),
      }.withoutNulls;

  static Course2TimelineStruct fromSerializableMap(Map<String, dynamic> data) =>
      Course2TimelineStruct(
        course2Title: deserializeParam(
          data['course2_title'],
          ParamType.String,
          false,
        ),
        course2Picture: deserializeParam(
          data['course2_picture'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Course2TimelineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Course2TimelineStruct &&
        course2Title == other.course2Title &&
        course2Picture == other.course2Picture;
  }

  @override
  int get hashCode => const ListEquality().hash([course2Title, course2Picture]);
}

Course2TimelineStruct createCourse2TimelineStruct({
  String? course2Title,
  String? course2Picture,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Course2TimelineStruct(
      course2Title: course2Title,
      course2Picture: course2Picture,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Course2TimelineStruct? updateCourse2TimelineStruct(
  Course2TimelineStruct? course2Timeline, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    course2Timeline
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCourse2TimelineStructData(
  Map<String, dynamic> firestoreData,
  Course2TimelineStruct? course2Timeline,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (course2Timeline == null) {
    return;
  }
  if (course2Timeline.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && course2Timeline.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final course2TimelineData =
      getCourse2TimelineFirestoreData(course2Timeline, forFieldValue);
  final nestedData =
      course2TimelineData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = course2Timeline.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCourse2TimelineFirestoreData(
  Course2TimelineStruct? course2Timeline, [
  bool forFieldValue = false,
]) {
  if (course2Timeline == null) {
    return {};
  }
  final firestoreData = mapToFirestore(course2Timeline.toMap());

  // Add any Firestore field values
  course2Timeline.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCourse2TimelineListFirestoreData(
  List<Course2TimelineStruct>? course2Timelines,
) =>
    course2Timelines
        ?.map((e) => getCourse2TimelineFirestoreData(e, true))
        .toList() ??
    [];
