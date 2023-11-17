import '/components/quit_adding_popup_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'quit_adding_goal_model.dart';
export 'quit_adding_goal_model.dart';

class QuitAddingGoalWidget extends StatefulWidget {
  const QuitAddingGoalWidget({Key? key}) : super(key: key);

  @override
  _QuitAddingGoalWidgetState createState() => _QuitAddingGoalWidgetState();
}

class _QuitAddingGoalWidgetState extends State<QuitAddingGoalWidget> {
  late QuitAddingGoalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuitAddingGoalModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(13.0, 10.0, 0.0, 4.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Builder(
          builder: (context) => FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 25.0,
            ),
            onPressed: () async {
              await showAlignedDialog(
                context: context,
                isGlobal: true,
                avoidOverflow: false,
                targetAnchor: AlignmentDirectional(0.0, 0.0)
                    .resolve(Directionality.of(context)),
                followerAnchor: AlignmentDirectional(0.0, 0.0)
                    .resolve(Directionality.of(context)),
                builder: (dialogContext) {
                  return Material(
                    color: Colors.transparent,
                    child: WebViewAware(child: QuitAddingPopupWidget()),
                  );
                },
              ).then((value) => setState(() {}));
            },
          ),
        ),
      ),
    );
  }
}
