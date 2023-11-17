// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Test2QuestionStruct extends FFFirebaseStruct {
  Test2QuestionStruct({
    String? test2Question,
    int? test2CorrectAnswerIndex,
    List<String>? test2Options,
    String? test2Description,
    String? test2Picture,
    double? test2CurrentProcess,
    int? test2CurrentNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _test2Question = test2Question,
        _test2CorrectAnswerIndex = test2CorrectAnswerIndex,
        _test2Options = test2Options,
        _test2Description = test2Description,
        _test2Picture = test2Picture,
        _test2CurrentProcess = test2CurrentProcess,
        _test2CurrentNumber = test2CurrentNumber,
        super(firestoreUtilData);

  // "test2_question" field.
  String? _test2Question;
  String get test2Question => _test2Question ?? '';
  set test2Question(String? val) => _test2Question = val;
  bool hasTest2Question() => _test2Question != null;

  // "test2_correctAnswerIndex" field.
  int? _test2CorrectAnswerIndex;
  int get test2CorrectAnswerIndex => _test2CorrectAnswerIndex ?? 0;
  set test2CorrectAnswerIndex(int? val) => _test2CorrectAnswerIndex = val;
  void incrementTest2CorrectAnswerIndex(int amount) =>
      _test2CorrectAnswerIndex = test2CorrectAnswerIndex + amount;
  bool hasTest2CorrectAnswerIndex() => _test2CorrectAnswerIndex != null;

  // "test2_options" field.
  List<String>? _test2Options;
  List<String> get test2Options => _test2Options ?? const [];
  set test2Options(List<String>? val) => _test2Options = val;
  void updateTest2Options(Function(List<String>) updateFn) =>
      updateFn(_test2Options ??= []);
  bool hasTest2Options() => _test2Options != null;

  // "test2_description" field.
  String? _test2Description;
  String get test2Description => _test2Description ?? '';
  set test2Description(String? val) => _test2Description = val;
  bool hasTest2Description() => _test2Description != null;

  // "test2_picture" field.
  String? _test2Picture;
  String get test2Picture => _test2Picture ?? '';
  set test2Picture(String? val) => _test2Picture = val;
  bool hasTest2Picture() => _test2Picture != null;

  // "test2_currentProcess" field.
  double? _test2CurrentProcess;
  double get test2CurrentProcess => _test2CurrentProcess ?? 0.0;
  set test2CurrentProcess(double? val) => _test2CurrentProcess = val;
  void incrementTest2CurrentProcess(double amount) =>
      _test2CurrentProcess = test2CurrentProcess + amount;
  bool hasTest2CurrentProcess() => _test2CurrentProcess != null;

  // "test2_currentNumber" field.
  int? _test2CurrentNumber;
  int get test2CurrentNumber => _test2CurrentNumber ?? 0;
  set test2CurrentNumber(int? val) => _test2CurrentNumber = val;
  void incrementTest2CurrentNumber(int amount) =>
      _test2CurrentNumber = test2CurrentNumber + amount;
  bool hasTest2CurrentNumber() => _test2CurrentNumber != null;

  static Test2QuestionStruct fromMap(Map<String, dynamic> data) =>
      Test2QuestionStruct(
        test2Question: data['test2_question'] as String?,
        test2CorrectAnswerIndex:
            castToType<int>(data['test2_correctAnswerIndex']),
        test2Options: getDataList(data['test2_options']),
        test2Description: data['test2_description'] as String?,
        test2Picture: data['test2_picture'] as String?,
        test2CurrentProcess: castToType<double>(data['test2_currentProcess']),
        test2CurrentNumber: castToType<int>(data['test2_currentNumber']),
      );

  static Test2QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? Test2QuestionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'test2_question': _test2Question,
        'test2_correctAnswerIndex': _test2CorrectAnswerIndex,
        'test2_options': _test2Options,
        'test2_description': _test2Description,
        'test2_picture': _test2Picture,
        'test2_currentProcess': _test2CurrentProcess,
        'test2_currentNumber': _test2CurrentNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'test2_question': serializeParam(
          _test2Question,
          ParamType.String,
        ),
        'test2_correctAnswerIndex': serializeParam(
          _test2CorrectAnswerIndex,
          ParamType.int,
        ),
        'test2_options': serializeParam(
          _test2Options,
          ParamType.String,
          true,
        ),
        'test2_description': serializeParam(
          _test2Description,
          ParamType.String,
        ),
        'test2_picture': serializeParam(
          _test2Picture,
          ParamType.String,
        ),
        'test2_currentProcess': serializeParam(
          _test2CurrentProcess,
          ParamType.double,
        ),
        'test2_currentNumber': serializeParam(
          _test2CurrentNumber,
          ParamType.int,
        ),
      }.withoutNulls;

  static Test2QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      Test2QuestionStruct(
        test2Question: deserializeParam(
          data['test2_question'],
          ParamType.String,
          false,
        ),
        test2CorrectAnswerIndex: deserializeParam(
          data['test2_correctAnswerIndex'],
          ParamType.int,
          false,
        ),
        test2Options: deserializeParam<String>(
          data['test2_options'],
          ParamType.String,
          true,
        ),
        test2Description: deserializeParam(
          data['test2_description'],
          ParamType.String,
          false,
        ),
        test2Picture: deserializeParam(
          data['test2_picture'],
          ParamType.String,
          false,
        ),
        test2CurrentProcess: deserializeParam(
          data['test2_currentProcess'],
          ParamType.double,
          false,
        ),
        test2CurrentNumber: deserializeParam(
          data['test2_currentNumber'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'Test2QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is Test2QuestionStruct &&
        test2Question == other.test2Question &&
        test2CorrectAnswerIndex == other.test2CorrectAnswerIndex &&
        listEquality.equals(test2Options, other.test2Options) &&
        test2Description == other.test2Description &&
        test2Picture == other.test2Picture &&
        test2CurrentProcess == other.test2CurrentProcess &&
        test2CurrentNumber == other.test2CurrentNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        test2Question,
        test2CorrectAnswerIndex,
        test2Options,
        test2Description,
        test2Picture,
        test2CurrentProcess,
        test2CurrentNumber
      ]);
}

Test2QuestionStruct createTest2QuestionStruct({
  String? test2Question,
  int? test2CorrectAnswerIndex,
  String? test2Description,
  String? test2Picture,
  double? test2CurrentProcess,
  int? test2CurrentNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Test2QuestionStruct(
      test2Question: test2Question,
      test2CorrectAnswerIndex: test2CorrectAnswerIndex,
      test2Description: test2Description,
      test2Picture: test2Picture,
      test2CurrentProcess: test2CurrentProcess,
      test2CurrentNumber: test2CurrentNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Test2QuestionStruct? updateTest2QuestionStruct(
  Test2QuestionStruct? test2QuestionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    test2QuestionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTest2QuestionStructData(
  Map<String, dynamic> firestoreData,
  Test2QuestionStruct? test2QuestionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (test2QuestionStruct == null) {
    return;
  }
  if (test2QuestionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && test2QuestionStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final test2QuestionStructData =
      getTest2QuestionFirestoreData(test2QuestionStruct, forFieldValue);
  final nestedData =
      test2QuestionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      test2QuestionStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTest2QuestionFirestoreData(
  Test2QuestionStruct? test2QuestionStruct, [
  bool forFieldValue = false,
]) {
  if (test2QuestionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(test2QuestionStruct.toMap());

  // Add any Firestore field values
  test2QuestionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTest2QuestionListFirestoreData(
  List<Test2QuestionStruct>? test2QuestionStructs,
) =>
    test2QuestionStructs
        ?.map((e) => getTest2QuestionFirestoreData(e, true))
        .toList() ??
    [];
