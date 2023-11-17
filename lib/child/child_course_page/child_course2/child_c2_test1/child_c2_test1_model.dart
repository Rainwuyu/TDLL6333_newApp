import '/components/back_to_home_widget.dart';
import '/components/test2_check_answer_bottom_sheet_widget.dart';
import '/components/test2_option_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'child_c2_test1_widget.dart' show ChildC2Test1Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ChildC2Test1Model extends FlutterFlowModel<ChildC2Test1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for test2_OptionButton component.
  late Test2OptionButtonModel test2OptionButtonModel1;
  // Model for test2_OptionButton component.
  late Test2OptionButtonModel test2OptionButtonModel2;
  // Model for test2_OptionButton component.
  late Test2OptionButtonModel test2OptionButtonModel3;
  // Model for test2_OptionButton component.
  late Test2OptionButtonModel test2OptionButtonModel4;
  // Model for backToHome component.
  late BackToHomeModel backToHomeModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    test2OptionButtonModel1 =
        createModel(context, () => Test2OptionButtonModel());
    test2OptionButtonModel2 =
        createModel(context, () => Test2OptionButtonModel());
    test2OptionButtonModel3 =
        createModel(context, () => Test2OptionButtonModel());
    test2OptionButtonModel4 =
        createModel(context, () => Test2OptionButtonModel());
    backToHomeModel = createModel(context, () => BackToHomeModel());
  }

  void dispose() {
    unfocusNode.dispose();
    test2OptionButtonModel1.dispose();
    test2OptionButtonModel2.dispose();
    test2OptionButtonModel3.dispose();
    test2OptionButtonModel4.dispose();
    backToHomeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
