import '/components/back_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'child_budget_widget.dart' show ChildBudgetWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChildBudgetModel extends FlutterFlowModel<ChildBudgetWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for back component.
  late BackModel backModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backModel = createModel(context, () => BackModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
