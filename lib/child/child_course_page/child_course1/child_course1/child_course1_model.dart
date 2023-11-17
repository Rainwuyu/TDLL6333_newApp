import '/components/back_to_choose_course_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'child_course1_widget.dart' show ChildCourse1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChildCourse1Model extends FlutterFlowModel<ChildCourse1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backToChooseCourse component.
  late BackToChooseCourseModel backToChooseCourseModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backToChooseCourseModel =
        createModel(context, () => BackToChooseCourseModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backToChooseCourseModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
