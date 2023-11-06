import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'talasemia_true_button_model.dart';
export 'talasemia_true_button_model.dart';

class TalasemiaTrueButtonWidget extends StatefulWidget {
  const TalasemiaTrueButtonWidget({Key? key}) : super(key: key);

  @override
  _TalasemiaTrueButtonWidgetState createState() =>
      _TalasemiaTrueButtonWidgetState();
}

class _TalasemiaTrueButtonWidgetState extends State<TalasemiaTrueButtonWidget> {
  late TalasemiaTrueButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TalasemiaTrueButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.goNamed(
          'ResultPage',
          queryParameters: {
            'talasemiaResult': serializeParam(
              true,
              ParamType.bool,
            ),
          }.withoutNulls,
        );
      },
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
    );
  }
}
