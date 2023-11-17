import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test2_option_button_model.dart';
export 'test2_option_button_model.dart';

class Test2OptionButtonWidget extends StatefulWidget {
  const Test2OptionButtonWidget({
    Key? key,
    required this.test2OptionIndex,
    required this.test2OptionText,
  }) : super(key: key);

  final int? test2OptionIndex;
  final String? test2OptionText;

  @override
  _Test2OptionButtonWidgetState createState() =>
      _Test2OptionButtonWidgetState();
}

class _Test2OptionButtonWidgetState extends State<Test2OptionButtonWidget> {
  late Test2OptionButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Test2OptionButtonModel());
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
            FFAppState().test2selectedOptionIndex = widget.test2OptionIndex!;
          });
        },
        text: widget.test2OptionText!,
        options: FFButtonOptions(
          width: 290.0,
          height: 48.0,
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color:
              FFAppState().test2selectedOptionIndex == widget.test2OptionIndex
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).secondaryBackground,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Readex Pro',
                color: FFAppState().test2selectedOptionIndex ==
                        widget.test2OptionIndex
                    ? FlutterFlowTheme.of(context).info
                    : FlutterFlowTheme.of(context).primary,
              ),
          elevation: 3.0,
          borderSide: BorderSide(
            color: Color(0xFF8268FC),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
