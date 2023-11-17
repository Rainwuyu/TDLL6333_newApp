import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'back_to_home_model.dart';
export 'back_to_home_model.dart';

class BackToHomeWidget extends StatefulWidget {
  const BackToHomeWidget({Key? key}) : super(key: key);

  @override
  _BackToHomeWidgetState createState() => _BackToHomeWidgetState();
}

class _BackToHomeWidgetState extends State<BackToHomeWidget> {
  late BackToHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackToHomeModel());
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
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed('Child_Homepage');
        },
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
          child: Icon(
            Icons.home_outlined,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
