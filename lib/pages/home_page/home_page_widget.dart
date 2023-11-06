import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
          backgroundColor: Color(0xFFD14D72),
          automaticallyImplyLeading: false,
          title: Text(
            'Sistem Pakar Talasemia',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 220.0,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/5f374a256bf2e22708687fd6748ef5be-red-blood-cells-illustration.png',
                            width: double.infinity,
                            height: 220.0,
                            fit: BoxFit.fitHeight,
                            alignment: Alignment(1.00, 0.00),
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.75,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFD14D72),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
                        child: Text(
                          'Talasemia adalah kondisi medis yang disebabkan oleh kelainan genetik sehingga tubuh tidak cukup memiliki hemoglobin atau sel darah merah.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                color: Color(0xF3FFFFFF),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/blood-cell-analysis-icon-isolated-contour-symbol-illustration-vector-removebg-preview_(1).png',
                                  width: 108.0,
                                  height: 95.0,
                                  fit: BoxFit.cover,
                                  alignment: Alignment(1.00, 0.00),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.8,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('PeriksaGejalaPage');
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF8989),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 1.00),
                              child: Container(
                                width: double.infinity,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF7575),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Text(
                                      'Periksa Gejala',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/medical-information-from-nurse-doctor-line-icon-info-from-medicine-female-staff-linear-pictogram-pharmacist-info-outline-icon-doctor-consultation-isolated-illustration-vector-removebg-preview_(1).png',
                                    width: 145.0,
                                    height: 140.0,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(1.00, 0.00),
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.8,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('InfoPage');
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFCAEAE),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 1.00),
                              child: Container(
                                width: double.infinity,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF9696),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Text(
                                      'Informasi',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/pngegg-removebg-preview.png',
                                    width: 120.0,
                                    height: 120.0,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(1.00, 0.00),
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.8,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  // WA Pakar
                                  unawaited(
                                    () async {
                                      await launchURL(
                                          'https://wa.me/082365196273');
                                    }(),
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFA7D397),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 1.00),
                              child: Container(
                                width: double.infinity,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF9CCE8A),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Text(
                                      'Hubungi Pakar',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
