import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'child_test1_score_model.dart';
export 'child_test1_score_model.dart';

class ChildTest1ScoreWidget extends StatefulWidget {
  const ChildTest1ScoreWidget({Key? key}) : super(key: key);

  @override
  _ChildTest1ScoreWidgetState createState() => _ChildTest1ScoreWidgetState();
}

class _ChildTest1ScoreWidgetState extends State<ChildTest1ScoreWidget> {
  late ChildTest1ScoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChildTest1ScoreModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              FFAppState().test1currectScore == 0
                                  ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/qvrita54qmnh/Vector_left_outline.png'
                                  : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/iwh9nbu6lcyo/Vector_left_solid.png',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              40.0, 0.0, 40.0, 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              FFAppState().test1currectScore >= 75
                                  ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/9peprwe7s1ww/Vector_solid.png'
                                  : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/bwstn4kj35wk/Vector_outline.png',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              FFAppState().test1currectScore == 100
                                  ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/z8g19l1zhjui/Vector_right_solid.png'
                                  : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/backup-cq4lfs/assets/loe8hcpsb5pr/Vector_right_outline.png',
                              width: 45.0,
                              height: 45.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: CircularPercentIndicator(
                      percent: functions.scoreProcessFunction(
                          FFAppState().test1currectScore)!,
                      radius: 105.0,
                      lineWidth: 15.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: Color(0xFF8268FC),
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Container(
                      width: 210.0,
                      height: 210.0,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 15.0),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFAppState()
                                                .test1currectScore
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 48.0,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.auto_awesome_outlined,
                                              color: Color(0xFFFFC619),
                                              size: 40.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        () {
                                          if (FFAppState()
                                                  .test1currectCounter <=
                                              1) {
                                            return 'What a pity! ';
                                          } else if (FFAppState()
                                                  .test1currectCounter ==
                                              FFAppState()
                                                  .test1questions
                                                  .length) {
                                            return 'Perfect!';
                                          } else {
                                            return 'Good job!';
                                          }
                                        }(),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.0, 55.0, 50.0, 0.0),
                child: Text(
                  'Congratulations for finishing all the conversation perfect!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 21.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Text(
                  'You got ${FFAppState().test1currectCounter.toString()}/${FFAppState().test1questions.length.toString()} correct',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    setState(() {
                      FFAppState().test1currentQuestionIndex = 0;
                      FFAppState().test1selectedOptionIndex = 99;
                      FFAppState().course1CurrentIndex =
                          FFAppState().course1CurrentIndex +
                                      FFAppState().test1currectCounter ==
                                  FFAppState().test1questions.length
                              ? 1
                              : 0;
                    });

                    context.pushNamed(
                      'Child_Course1',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.leftToRight,
                        ),
                      },
                    );
                  },
                  text: 'Done',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 55.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF8268FC),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).info,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
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
