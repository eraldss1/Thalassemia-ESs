import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gejala_slider_model.dart';
export 'gejala_slider_model.dart';

class GejalaSliderWidget extends StatefulWidget {
  const GejalaSliderWidget({
    Key? key,
    String? title,
    String? sliderId,
  })  : this.title = title ?? 'Title',
        this.sliderId = sliderId ?? 'sliderId',
        super(key: key);

  final String title;
  final String sliderId;

  @override
  _GejalaSliderWidgetState createState() => _GejalaSliderWidgetState();
}

class _GejalaSliderWidgetState extends State<GejalaSliderWidget> {
  late GejalaSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GejalaSliderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: Container(
          width: double.infinity,
          height: 90.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    widget.title,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Slider(
                    key: ValueKey(widget.sliderId),
                    activeColor: FlutterFlowTheme.of(context).primary,
                    inactiveColor: FlutterFlowTheme.of(context).alternate,
                    min: 0.0,
                    max: 1.0,
                    value: _model.sliderValue ??= 0.0,
                    label: _model.sliderValue.toString(),
                    divisions: 5,
                    onChanged: (newValue) {
                      newValue = double.parse(newValue.toStringAsFixed(6));
                      setState(() => _model.sliderValue = newValue);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
