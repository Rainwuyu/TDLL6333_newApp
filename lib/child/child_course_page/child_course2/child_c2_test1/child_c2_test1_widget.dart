import '/components/back_to_home_widget.dart';
import '/components/test2_check_answer_bottom_sheet_widget.dart';
import '/components/test2_option_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'child_c2_test1_model.dart';
export 'child_c2_test1_model.dart';

class ChildC2Test1Widget extends StatefulWidget {
  const ChildC2Test1Widget({Key? key}) : super(key: key);

  @override
  _ChildC2Test1WidgetState createState() => _ChildC2Test1WidgetState();
}

class _ChildC2Test1WidgetState extends State<ChildC2Test1Widget> {
  late ChildC2Test1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChildC2Test1Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: wrapWithModel(
            model: _model.backToHomeModel,
            updateCallback: () => setState(() {}),
            child: BackToHomeWidget(),
          ),
          title: Container(
            width: 220.0,
            child: Stack(
              children: [
                LinearPercentIndicator(
                  percent: 1.0,
                  width: 220.0,
                  lineHeight: 10.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).primary,
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  barRadius: Radius.circular(20.0),
                  padding: EdgeInsets.zero,
                ),
                LinearPercentIndicator(
                  percent: FFAppState()
                      .test2questions[FFAppState().test2currentQuestionIndex]
                      .test2CurrentProcess,
                  width: 220.0,
                  lineHeight: 10.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).primary,
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  barRadius: Radius.circular(20.0),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 23.0, 0.0),
              child: RichText(
                textScaleFactor: MediaQuery.of(context).textScaleFactor,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: FFAppState()
                          .test2questions[
                              FFAppState().test2currentQuestionIndex]
                          .test2CurrentNumber
                          .toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: ' / 3',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: Container(
                  width: double.infinity,
                  height: 690.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 32.0),
                        child: Container(
                          width: double.infinity,
                          height: 320.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E3FF),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                                child: Image.network(
                                  FFAppState()
                                      .test2questions[FFAppState()
                                          .test2currentQuestionIndex]
                                      .test2Picture,
                                  width: double.infinity,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 15.0, 30.0, 15.0),
                                  child: Text(
                                    FFAppState()
                                        .test2questions[FFAppState()
                                            .test2currentQuestionIndex]
                                        .test2Question,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 16.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 250.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.test2OptionButtonModel1,
                                updateCallback: () => setState(() {}),
                                child: Test2OptionButtonWidget(
                                  test2OptionIndex: 0,
                                  test2OptionText: FFAppState()
                                      .test2questions[FFAppState()
                                          .test2currentQuestionIndex]
                                      .test2Options[0],
                                ),
                              ),
                              wrapWithModel(
                                model: _model.test2OptionButtonModel2,
                                updateCallback: () => setState(() {}),
                                child: Test2OptionButtonWidget(
                                  test2OptionIndex: 1,
                                  test2OptionText: FFAppState()
                                      .test2questions[FFAppState()
                                          .test2currentQuestionIndex]
                                      .test2Options[1],
                                ),
                              ),
                              wrapWithModel(
                                model: _model.test2OptionButtonModel3,
                                updateCallback: () => setState(() {}),
                                child: Test2OptionButtonWidget(
                                  test2OptionIndex: 2,
                                  test2OptionText: FFAppState()
                                      .test2questions[FFAppState()
                                          .test2currentQuestionIndex]
                                      .test2Options[2],
                                ),
                              ),
                              wrapWithModel(
                                model: _model.test2OptionButtonModel4,
                                updateCallback: () => setState(() {}),
                                child: Test2OptionButtonWidget(
                                  test2OptionIndex: 3,
                                  test2OptionText: FFAppState()
                                      .test2questions[FFAppState()
                                          .test2currentQuestionIndex]
                                      .test2Options[3],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          if (FFAppState().test2selectedOptionIndex ==
                              FFAppState()
                                  .test2questions[
                                      FFAppState().test2currentQuestionIndex]
                                  .test2CorrectAnswerIndex) {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              isDismissible: false,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                    child: GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: Test2CheckAnswerBottomSheetWidget(
                                      test2isCorrect: true,
                                    ),
                                  ),
                                ));
                              },
                            ).then((value) => safeSetState(() {}));

                            setState(() {
                              FFAppState().test2currectCounter =
                                  FFAppState().test2currectCounter + 1;
                              FFAppState().test2currectScore =
                                  FFAppState().test2currectScore + 33;
                            });
                            setState(() {
                              FFAppState().test2currectScore =
                                  FFAppState().test2currectScore == 99
                                      ? 100
                                      : FFAppState().test2currectScore;
                            });
                          } else {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              isDismissible: false,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                    child: GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: Test2CheckAnswerBottomSheetWidget(
                                      test2isCorrect: false,
                                    ),
                                  ),
                                ));
                              },
                            ).then((value) => safeSetState(() {}));
                          }
                        },
                        text: 'Submit',
                        options: FFButtonOptions(
                          width: 180.0,
                          height: 55.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF8268FC),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
