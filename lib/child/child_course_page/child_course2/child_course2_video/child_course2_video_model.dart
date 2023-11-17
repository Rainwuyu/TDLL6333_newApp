import '/components/back_widget.dart';
import '/components/test2_popup_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'child_course2_video_widget.dart' show ChildCourse2VideoWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ChildCourse2VideoModel extends FlutterFlowModel<ChildCourse2VideoWidget> {
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
