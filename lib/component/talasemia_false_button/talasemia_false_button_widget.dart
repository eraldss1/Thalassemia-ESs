import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'talasemia_false_button_model.dart';

export 'talasemia_false_button_model.dart';

class TalasemiaFalseButtonWidget extends StatefulWidget {
  const TalasemiaFalseButtonWidget({Key? key}) : super(key: key);

  @override
  _TalasemiaFalseButtonWidgetState createState() =>
      _TalasemiaFalseButtonWidgetState();
}

class _TalasemiaFalseButtonWidgetState
    extends State<TalasemiaFalseButtonWidget> {
  late TalasemiaFalseButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TalasemiaFalseButtonModel());
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
              false,
              ParamType.bool,
            ),
          }.withoutNulls,
        );
      },
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: Color(0xFF9CCE8A),
        ),
      ),
    );
  }
}
