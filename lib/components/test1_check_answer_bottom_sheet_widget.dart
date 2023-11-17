import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test1_check_answer_bottom_sheet_model.dart';
export 'test1_check_answer_bottom_sheet_model.dart';

class Test1CheckAnswerBottomSheetWidget extends StatefulWidget {
  const Test1CheckAnswerBottomSheetWidget({
    Key? key,
    required this.test1isCorrect,
  }) : super(key: key);

  final bool? test1isCorrect;

  @override
  _Test1CheckAnswerBottomSheetWidgetState createState() =>
      _Test1CheckAnswerBottomSheetWidgetState();
}

class _Test1CheckAnswerBottomSheetWidgetState
    extends State<Test1CheckAnswerBottomSheetWidget> {
  late Test1CheckAnswerBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Test1CheckAnswerBottomSheetModel());
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
        color: widget.test1isCorrect! ? Color(0xFFB1FFFF) : Color(0xFFFFBEBF),
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
              widget.test1isCorrect!
                  ? 'CORRECT'
                  : 'The Answer: ${FFAppState().test1questions[FFAppState().test1currentQuestionIndex].test1Options[FFAppState().test1questions[FFAppState().test1currentQuestionIndex].test1CorrectAnswerIndex]}',
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
                      .test1questions[FFAppState().test1currentQuestionIndex]
                      .test1Description,
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
                  FFAppState().test1currentQuestionIndex =
                      FFAppState().test1currentQuestionIndex + 1;
                  FFAppState().test1selectedOptionIndex = 99;
                });
                if (FFAppState().test1currentQuestionIndex <
                    FFAppState().test1questions.length) {
                  Navigator.pop(context);
                } else {
                  Navigator.pop(context);

                  context.pushNamed('Child_Test1_Score');
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
