import '/components/back_to_home_widget.dart';
import '/components/test1_check_answer_bottom_sheet_widget.dart';
import '/components/test1_option_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'child_c1_test1_widget.dart' show ChildC1Test1Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ChildC1Test1Model extends FlutterFlowModel<ChildC1Test1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for test1_OptionButton component.
  late Test1OptionButtonModel test1OptionButtonModel1;
  // Model for test1_OptionButton component.
  late Test1OptionButtonModel test1OptionButtonModel2;
  // Model for test1_OptionButton component.
  late Test1OptionButtonModel test1OptionButtonModel3;
  // Model for test1_OptionButton component.
  late Test1OptionButtonModel test1OptionButtonModel4;
  // Model for backToHome component.
  late BackToHomeModel backToHomeModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    test1OptionButtonModel1 =
        createModel(context, () => Test1OptionButtonModel());
    test1OptionButtonModel2 =
        createModel(context, () => Test1OptionButtonModel());
    test1OptionButtonModel3 =
        createModel(context, () => Test1OptionButtonModel());
    test1OptionButtonModel4 =
        createModel(context, () => Test1OptionButtonModel());
    backToHomeModel = createModel(context, () => BackToHomeModel());
  }

  void dispose() {
    unfocusNode.dispose();
    test1OptionButtonModel1.dispose();
    test1OptionButtonModel2.dispose();
    test1OptionButtonModel3.dispose();
    test1OptionButtonModel4.dispose();
    backToHomeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
