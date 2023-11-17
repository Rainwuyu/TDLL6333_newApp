// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Test1QuestionStruct extends FFFirebaseStruct {
  Test1QuestionStruct({
    String? test1Question,
    List<String>? test1Options,
    int? test1CorrectAnswerIndex,
    String? test1Description,
    String? test1Pictures,
    double? test1CurrentProcess,
    int? test1CurrentNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _test1Question = test1Question,
        _test1Options = test1Options,
        _test1CorrectAnswerIndex = test1CorrectAnswerIndex,
        _test1Description = test1Description,
        _test1Pictures = test1Pictures,
        _test1CurrentProcess = test1CurrentProcess,
        _test1CurrentNumber = test1CurrentNumber,
        super(firestoreUtilData);

  // "test1_question" field.
  String? _test1Question;
  String get test1Question => _test1Question ?? '';
  set test1Question(String? val) => _test1Question = val;
  bool hasTest1Question() => _test1Question != null;

  // "test1_options" field.
  List<String>? _test1Options;
  List<String> get test1Options => _test1Options ?? const [];
  set test1Options(List<String>? val) => _test1Options = val;
  void updateTest1Options(Function(List<String>) updateFn) =>
      updateFn(_test1Options ??= []);
  bool hasTest1Options() => _test1Options != null;

  // "test1_correctAnswerIndex" field.
  int? _test1CorrectAnswerIndex;
  int get test1CorrectAnswerIndex => _test1CorrectAnswerIndex ?? 0;
  set test1CorrectAnswerIndex(int? val) => _test1CorrectAnswerIndex = val;
  void incrementTest1CorrectAnswerIndex(int amount) =>
      _test1CorrectAnswerIndex = test1CorrectAnswerIndex + amount;
  bool hasTest1CorrectAnswerIndex() => _test1CorrectAnswerIndex != null;

  // "test1_description" field.
  String? _test1Description;
  String get test1Description => _test1Description ?? '';
  set test1Description(String? val) => _test1Description = val;
  bool hasTest1Description() => _test1Description != null;

  // "test1_pictures" field.
  String? _test1Pictures;
  String get test1Pictures => _test1Pictures ?? '';
  set test1Pictures(String? val) => _test1Pictures = val;
  bool hasTest1Pictures() => _test1Pictures != null;

  // "test1_currentProcess" field.
  double? _test1CurrentProcess;
  double get test1CurrentProcess => _test1CurrentProcess ?? 0.0;
  set test1CurrentProcess(double? val) => _test1CurrentProcess = val;
  void incrementTest1CurrentProcess(double amount) =>
      _test1CurrentProcess = test1CurrentProcess + amount;
  bool hasTest1CurrentProcess() => _test1CurrentProcess != null;

  // "test1_currentNumber" field.
  int? _test1CurrentNumber;
  int get test1CurrentNumber => _test1CurrentNumber ?? 0;
  set test1CurrentNumber(int? val) => _test1CurrentNumber = val;
  void incrementTest1CurrentNumber(int amount) =>
      _test1CurrentNumber = test1CurrentNumber + amount;
  bool hasTest1CurrentNumber() => _test1CurrentNumber != null;

  static Test1QuestionStruct fromMap(Map<String, dynamic> data) =>
      Test1QuestionStruct(
        test1Question: data['test1_question'] as String?,
        test1Options: getDataList(data['test1_options']),
        test1CorrectAnswerIndex:
            castToType<int>(data['test1_correctAnswerIndex']),
        test1Description: data['test1_description'] as String?,
        test1Pictures: data['test1_pictures'] as String?,
        test1CurrentProcess: castToType<double>(data['test1_currentProcess']),
        test1CurrentNumber: castToType<int>(data['test1_currentNumber']),
      );

  static Test1QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? Test1QuestionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'test1_question': _test1Question,
        'test1_options': _test1Options,
        'test1_correctAnswerIndex': _test1CorrectAnswerIndex,
        'test1_description': _test1Description,
        'test1_pictures': _test1Pictures,
        'test1_currentProcess': _test1CurrentProcess,
        'test1_currentNumber': _test1CurrentNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'test1_question': serializeParam(
          _test1Question,
          ParamType.String,
        ),
        'test1_options': serializeParam(
          _test1Options,
          ParamType.String,
          true,
        ),
        'test1_correctAnswerIndex': serializeParam(
          _test1CorrectAnswerIndex,
          ParamType.int,
        ),
        'test1_description': serializeParam(
          _test1Description,
          ParamType.String,
        ),
        'test1_pictures': serializeParam(
          _test1Pictures,
          ParamType.String,
        ),
        'test1_currentProcess': serializeParam(
          _test1CurrentProcess,
          ParamType.double,
        ),
        'test1_currentNumber': serializeParam(
          _test1CurrentNumber,
          ParamType.int,
        ),
      }.withoutNulls;

  static Test1QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      Test1QuestionStruct(
        test1Question: deserializeParam(
          data['test1_question'],
          ParamType.String,
          false,
        ),
        test1Options: deserializeParam<String>(
          data['test1_options'],
          ParamType.String,
          true,
        ),
        test1CorrectAnswerIndex: deserializeParam(
          data['test1_correctAnswerIndex'],
          ParamType.int,
          false,
        ),
        test1Description: deserializeParam(
          data['test1_description'],
          ParamType.String,
          false,
        ),
        test1Pictures: deserializeParam(
          data['test1_pictures'],
          ParamType.String,
          false,
        ),
        test1CurrentProcess: deserializeParam(
          data['test1_currentProcess'],
          ParamType.double,
          false,
        ),
        test1CurrentNumber: deserializeParam(
          data['test1_currentNumber'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'Test1QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is Test1QuestionStruct &&
        test1Question == other.test1Question &&
        listEquality.equals(test1Options, other.test1Options) &&
        test1CorrectAnswerIndex == other.test1CorrectAnswerIndex &&
        test1Description == other.test1Description &&
        test1Pictures == other.test1Pictures &&
        test1CurrentProcess == other.test1CurrentProcess &&
        test1CurrentNumber == other.test1CurrentNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        test1Question,
        test1Options,
        test1CorrectAnswerIndex,
        test1Description,
        test1Pictures,
        test1CurrentProcess,
        test1CurrentNumber
      ]);
}

Test1QuestionStruct createTest1QuestionStruct({
  String? test1Question,
  int? test1CorrectAnswerIndex,
  String? test1Description,
  String? test1Pictures,
  double? test1CurrentProcess,
  int? test1CurrentNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Test1QuestionStruct(
      test1Question: test1Question,
      test1CorrectAnswerIndex: test1CorrectAnswerIndex,
      test1Description: test1Description,
      test1Pictures: test1Pictures,
      test1CurrentProcess: test1CurrentProcess,
      test1CurrentNumber: test1CurrentNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Test1QuestionStruct? updateTest1QuestionStruct(
  Test1QuestionStruct? test1QuestionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    test1QuestionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTest1QuestionStructData(
  Map<String, dynamic> firestoreData,
  Test1QuestionStruct? test1QuestionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (test1QuestionStruct == null) {
    return;
  }
  if (test1QuestionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && test1QuestionStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final test1QuestionStructData =
      getTest1QuestionFirestoreData(test1QuestionStruct, forFieldValue);
  final nestedData =
      test1QuestionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      test1QuestionStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTest1QuestionFirestoreData(
  Test1QuestionStruct? test1QuestionStruct, [
  bool forFieldValue = false,
]) {
  if (test1QuestionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(test1QuestionStruct.toMap());

  // Add any Firestore field values
  test1QuestionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTest1QuestionListFirestoreData(
  List<Test1QuestionStruct>? test1QuestionStructs,
) =>
    test1QuestionStructs
        ?.map((e) => getTest1QuestionFirestoreData(e, true))
        .toList() ??
    [];
