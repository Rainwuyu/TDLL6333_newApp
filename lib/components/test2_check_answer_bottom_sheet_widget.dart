import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test2_check_answer_bottom_sheet_model.dart';
export 'test2_check_answer_bottom_sheet_model.dart';

class Test2CheckAnswerBottomSheetWidget extends StatefulWidget {
  const Test2CheckAnswerBottomSheetWidget({
    Key? key,
    required this.test2isCorrect,
  }) : super(key: key);

  final bool? test2isCorrect;

  @override
  _Test2CheckAnswerBottomSheetWidgetState createState() =>
      _Test2CheckAnswerBottomSheetWidgetState();
}

class _Test2CheckAnswerBottomSheetWidgetState
    extends State<Test2CheckAnswerBottomSheetWidget> {
  late Test2CheckAnswerBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Test2CheckAnswerBottomSheetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 270.0,
      decoration: BoxDecoration(
        color: widget.test2isCorrect!
            ? Color(0xFFE8E3FF)
            : FlutterFlowTheme.of(context).error,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AutoSizeText(
              widget.test2isCorrect!
                  ? 'CORRECT'
                  : 'The Answer: ${FFAppState().test2questions[FFAppState().test2currentQuestionIndex].test2Options[FFAppState().test2questions[FFAppState().test2currentQuestionIndex].test2CorrectAnswerIndex]}',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 18.0,
                  ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                child: Text(
                  FFAppState()
                      .test2questions[FFAppState().test2currentQuestionIndex]
                      .test2Description,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                setState(() {
                  FFAppState().test2currentQuestionIndex =
                      FFAppState().test2currentQuestionIndex + 1;
                  FFAppState().test2selectedOptionIndex = 99;
                });
                if (FFAppState().test2currentQuestionIndex <
                    FFAppState().test2questions.length) {
                  Navigator.pop(context);
                } else {
                  Navigator.pop(context);

                  context.pushNamed('Child_Test2_Score');
                }
              },
              text: 'Next Question',
              options: FFButtonOptions(
                width: double.infinity,
                height: 60.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primaryBackground,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
