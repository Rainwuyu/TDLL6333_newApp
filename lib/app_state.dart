import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<Test1QuestionStruct> _test1questions = [
    Test1QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"test1_question\":\"Q1: What problem did the advent of money solve？\",\"test1_options\":\"[\\\"A. it makes people rich\\\",\\\"B. commodity exchange\\\",\\\"C. you can spend it\\\",\\\"D. bad for people exchanging goods\\\"]\",\"test1_correctAnswerIndex\":\"1\",\"test1_description\":\"Money helped people to exchange the items they needed！\\nSaving money is to help us prepare for our needs！\",\"test1_pictures\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/group-f-5jpdzr/assets/6aitmuu1lib5/t1-1.png\",\"test1_currentProcess\":\"0\",\"test1_currentNumber\":\"1\"}')),
    Test1QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"test1_question\":\"Q2: Have the ways of saving money changed between ancient times and now?\",\"test1_options\":\"[\\\"A. no it doesn’t\\\",\\\"B. yes it does\\\",\\\"C. not sure\\\",\\\"D. I don’t know\\\"]\",\"test1_correctAnswerIndex\":\"1\",\"test1_description\":\"Nowadays people tend to use paper money or savings cards, which has led to a change in the way of saving money from storing it physically, to depositing it in a bank!\",\"test1_pictures\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/group-f-5jpdzr/assets/ceuewrfcn6nh/t1-2.png\",\"test1_currentProcess\":\"0.33\",\"test1_currentNumber\":\"2\"}')),
    Test1QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"test1_question\":\"Q3: Why are we saving\\n\",\"test1_options\":\"[\\\"A. buy the toys you want\\\",\\\"B. buy delicious ice cream\\\",\\\"C. buy interesting book\\\",\\\"D. there is no harm\\\"]\",\"test1_correctAnswerIndex\":\"3\",\"test1_description\":\"Saving money helps us buy the things we like! It also helps to have more ability to cope with risk!\",\"test1_pictures\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/group-f-5jpdzr/assets/kauldothrg9r/t1-3.png\",\"test1_currentProcess\":\"0.67\",\"test1_currentNumber\":\"3\"}')),
    Test1QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"test1_question\":\"Q4: Which of the following saving methods does not correspond to a benefit?\",\"test1_options\":\"[\\\"A.  parents--security\\\\n\\\",\\\"B.  bank--interest \\\\n\\\",\\\"C. bank card--confiscated \\\",\\\"D. piggy bank - safety\\\\n\\\"]\",\"test1_correctAnswerIndex\":\"2\",\"test1_description\":\"You don\'t have to worry if you choose a bank with an endorsement for your deposits!\",\"test1_pictures\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/group-f-5jpdzr/assets/bi05ibw21btf/t1-4.png\",\"test1_currentProcess\":\"1\",\"test1_currentNumber\":\"4\"}'))
  ];
  List<Test1QuestionStruct> get test1questions => _test1questions;
  set test1questions(List<Test1QuestionStruct> _value) {
    _test1questions = _value;
  }

  void addToTest1questions(Test1QuestionStruct _value) {
    _test1questions.add(_value);
  }

  void removeFromTest1questions(Test1QuestionStruct _value) {
    _test1questions.remove(_value);
  }

  void removeAtIndexFromTest1questions(int _index) {
    _test1questions.removeAt(_index);
  }

  void updateTest1questionsAtIndex(
    int _index,
    Test1QuestionStruct Function(Test1QuestionStruct) updateFn,
  ) {
    _test1questions[_index] = updateFn(_test1questions[_index]);
  }

  void insertAtIndexInTest1questions(int _index, Test1QuestionStruct _value) {
    _test1questions.insert(_index, _value);
  }

  int _test1currentQuestionIndex = 0;
  int get test1currentQuestionIndex => _test1currentQuestionIndex;
  set test1currentQuestionIndex(int _value) {
    _test1currentQuestionIndex = _value;
  }

  int _test1selectedOptionIndex = 99;
  int get test1selectedOptionIndex => _test1selectedOptionIndex;
  set test1selectedOptionIndex(int _value) {
    _test1selectedOptionIndex = _value;
  }

  int _test1currectCounter = 0;
  int get test1currectCounter => _test1currectCounter;
  set test1currectCounter(int _value) {
    _test1currectCounter = _value;
  }

  int _test1currectScore = 0;
  int get test1currectScore => _test1currectScore;
  set test1currectScore(int _value) {
    _test1currectScore = _value;
  }

  List<Test2QuestionStruct> _test2questions = [
    Test2QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"test2_question\":\"Q1: What are some of the factors that influence how we spend our money?\",\"test2_correctAnswerIndex\":\"3\",\"test2_options\":\"[\\\"A. Friend\'s Perspective\\\",\\\"B. Pushing of advertisements\\\",\\\"C. Recommendations from celebrities\\\",\\\"D. All of the above\\\"]\",\"test2_description\":\"There are many factors that influence how we spend our money! But we should find things that make spending money meaningful afterwards!\",\"test2_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/group-f-5jpdzr/assets/yfcu9db0lbb2/t2-1.png\",\"test2_currentProcess\":\"0\",\"test2_currentNumber\":\"1\"}')),
    Test2QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"test2_question\":\"Q2: Which of the following is planned spending?\",\"test2_correctAnswerIndex\":\"3\",\"test2_options\":\"[\\\"A. Buying what you want\\\",\\\"B. Eating what you want to eat \\\",\\\"C. Spending money on learning\\\",\\\"D. Buying what looks good \\\"]\",\"test2_description\":\"In the anime, Purple Glasses student fulfills his musical hobby and decides to save his money to buy a guitar! This way he will not only have fun, but get closer to his dream by budgeting!\",\"test2_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/group-f-5jpdzr/assets/r6pam7dy052i/t2-2.png\",\"test2_currentProcess\":\"0.5\",\"test2_currentNumber\":\"2\"}')),
    Test2QuestionStruct.fromSerializableMap(jsonDecode(
        '{\"test2_question\":\"Q3: What should we consider in our spending?\",\"test2_correctAnswerIndex\":\"3\",\"test2_options\":\"[\\\"A. To satisfy recreational needs\\\",\\\"B. To meet learning needs\\\",\\\"C. To meet the needs of life\\\",\\\"D. All of the above\\\"]\",\"test2_description\":\"You don\'t have to worry if you choose a bank with an endorsement for your deposits!\",\"test2_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/group-f-5jpdzr/assets/y3kn59xl13hn/t2-3.png\",\"test2_currentProcess\":\"1\",\"test2_currentNumber\":\"3\"}'))
  ];
  List<Test2QuestionStruct> get test2questions => _test2questions;
  set test2questions(List<Test2QuestionStruct> _value) {
    _test2questions = _value;
  }

  void addToTest2questions(Test2QuestionStruct _value) {
    _test2questions.add(_value);
  }

  void removeFromTest2questions(Test2QuestionStruct _value) {
    _test2questions.remove(_value);
  }

  void removeAtIndexFromTest2questions(int _index) {
    _test2questions.removeAt(_index);
  }

  void updateTest2questionsAtIndex(
    int _index,
    Test2QuestionStruct Function(Test2QuestionStruct) updateFn,
  ) {
    _test2questions[_index] = updateFn(_test2questions[_index]);
  }

  void insertAtIndexInTest2questions(int _index, Test2QuestionStruct _value) {
    _test2questions.insert(_index, _value);
  }

  int _test2currentQuestionIndex = 0;
  int get test2currentQuestionIndex => _test2currentQuestionIndex;
  set test2currentQuestionIndex(int _value) {
    _test2currentQuestionIndex = _value;
  }

  int _test2selectedOptionIndex = 99;
  int get test2selectedOptionIndex => _test2selectedOptionIndex;
  set test2selectedOptionIndex(int _value) {
    _test2selectedOptionIndex = _value;
  }

  int _test2currectCounter = 0;
  int get test2currectCounter => _test2currectCounter;
  set test2currectCounter(int _value) {
    _test2currectCounter = _value;
  }

  int _test2currectScore = 0;
  int get test2currectScore => _test2currectScore;
  set test2currectScore(int _value) {
    _test2currectScore = _value;
  }

  List<Course1TimelineStruct> _course1Timeline = [
    Course1TimelineStruct.fromSerializableMap(jsonDecode(
        '{\"course1_title\":\"What is saving?\",\"course1_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/rafvx7p4m4ir/de69627fb0fba8b26db7dda3837ccb26.jpeg\"}')),
    Course1TimelineStruct.fromSerializableMap(jsonDecode(
        '{\"course1_title\":\"Why are we saving?\",\"course1_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/gp2y1t5jnr22/3caacbeec3986cecaed0f5b96f1bed7d.jpeg\"}')),
    Course1TimelineStruct.fromSerializableMap(jsonDecode(
        '{\"course1_title\":\"How to save money?\",\"course1_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/3kf4n107jla7/56147099fd26ab2a936b6440ae1537fb.jpeg\"}'))
  ];
  List<Course1TimelineStruct> get course1Timeline => _course1Timeline;
  set course1Timeline(List<Course1TimelineStruct> _value) {
    _course1Timeline = _value;
  }

  void addToCourse1Timeline(Course1TimelineStruct _value) {
    _course1Timeline.add(_value);
  }

  void removeFromCourse1Timeline(Course1TimelineStruct _value) {
    _course1Timeline.remove(_value);
  }

  void removeAtIndexFromCourse1Timeline(int _index) {
    _course1Timeline.removeAt(_index);
  }

  void updateCourse1TimelineAtIndex(
    int _index,
    Course1TimelineStruct Function(Course1TimelineStruct) updateFn,
  ) {
    _course1Timeline[_index] = updateFn(_course1Timeline[_index]);
  }

  void insertAtIndexInCourse1Timeline(
      int _index, Course1TimelineStruct _value) {
    _course1Timeline.insert(_index, _value);
  }

  int _course1CurrentIndex = 0;
  int get course1CurrentIndex => _course1CurrentIndex;
  set course1CurrentIndex(int _value) {
    _course1CurrentIndex = _value;
  }

  bool _course1VideoState = false;
  bool get course1VideoState => _course1VideoState;
  set course1VideoState(bool _value) {
    _course1VideoState = _value;
  }

  List<Course2TimelineStruct> _course2Timeline = [
    Course2TimelineStruct.fromSerializableMap(jsonDecode(
        '{\"course2_title\":\"What affects spending?\",\"course2_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/kly3w17gqzsb/a2b0cb7b7e58dfe3f2b99938fc02faa5.jpeg\"}')),
    Course2TimelineStruct.fromSerializableMap(jsonDecode(
        '{\"course2_title\":\"Budget & spending\",\"course2_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/vdew1klm32na/e0c28ece4023201ba5fc23b81e9f631b.jpeg\"}')),
    Course2TimelineStruct.fromSerializableMap(jsonDecode(
        '{\"course2_title\":\"Tips for spending\",\"course2_picture\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/zw4nwa7o87q1/a3b955ac5a4d9020a345a77ea049355e.jpeg\"}'))
  ];
  List<Course2TimelineStruct> get course2Timeline => _course2Timeline;
  set course2Timeline(List<Course2TimelineStruct> _value) {
    _course2Timeline = _value;
  }

  void addToCourse2Timeline(Course2TimelineStruct _value) {
    _course2Timeline.add(_value);
  }

  void removeFromCourse2Timeline(Course2TimelineStruct _value) {
    _course2Timeline.remove(_value);
  }

  void removeAtIndexFromCourse2Timeline(int _index) {
    _course2Timeline.removeAt(_index);
  }

  void updateCourse2TimelineAtIndex(
    int _index,
    Course2TimelineStruct Function(Course2TimelineStruct) updateFn,
  ) {
    _course2Timeline[_index] = updateFn(_course2Timeline[_index]);
  }

  void insertAtIndexInCourse2Timeline(
      int _index, Course2TimelineStruct _value) {
    _course2Timeline.insert(_index, _value);
  }

  int _course2CurrentIndex = 0;
  int get course2CurrentIndex => _course2CurrentIndex;
  set course2CurrentIndex(int _value) {
    _course2CurrentIndex = _value;
  }

  bool _course2VideoState = false;
  bool get course2VideoState => _course2VideoState;
  set course2VideoState(bool _value) {
    _course2VideoState = _value;
  }

  int _budgetTotal = 0;
  int get budgetTotal => _budgetTotal;
  set budgetTotal(int _value) {
    _budgetTotal = _value;
  }

  int _budget1 = 0;
  int get budget1 => _budget1;
  set budget1(int _value) {
    _budget1 = _value;
  }

  int _budget2 = 0;
  int get budget2 => _budget2;
  set budget2(int _value) {
    _budget2 = _value;
  }

  int _budget3 = 0;
  int get budget3 => _budget3;
  set budget3(int _value) {
    _budget3 = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
