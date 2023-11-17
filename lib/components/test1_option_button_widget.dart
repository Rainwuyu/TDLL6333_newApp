import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test1_option_button_model.dart';
export 'test1_option_button_model.dart';

class Test1OptionButtonWidget extends StatefulWidget {
  const Test1OptionButtonWidget({
    Key? key,
    required this.test1OptionIndex,
    required this.test1OptionText,
  }) : super(key: key);

  final int? test1OptionIndex;
  final String? test1OptionText;

  @override
  _Test1OptionButtonWidgetState createState() =>
      _Test1OptionButtonWidgetState();
}

class _Test1OptionButtonWidgetState extends State<Test1OptionButtonWidget> {
  late Test1OptionButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Test1OptionButtonModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: FFButtonWidget(
        onPressed: () async {
          // test1_setSelectedOptionIndex
          _model.updatePage(() {
            FFAppState().test1selectedOptionIndex = widget.test1OptionIndex!;
          });
        },
        text: widget.test1OptionText!,
        options: FFButtonOptions(
          width: 290.0,
          height: 48.0,
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color:
              FFAppState().test1selectedOptionIndex == widget.test1OptionIndex
                  ? Color(0xFF8268FC)
                  : FlutterFlowTheme.of(context).secondaryBackground,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Readex Pro',
                color: FFAppState().test1selectedOptionIndex ==
                        widget.test1OptionIndex
                    ? FlutterFlowTheme.of(context).info
                    : FlutterFlowTheme.of(context).primary,
              ),
          elevation: 3.0,
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primary,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
