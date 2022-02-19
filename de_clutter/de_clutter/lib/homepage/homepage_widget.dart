import '../clutter_coins/clutter_coins_widget.dart';
import '../erecipt/erecipt_widget.dart';
import '../ewaste/ewaste_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../popup/popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({Key key}) : super(key: key);

  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).dark900,
      body: Stack(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.14, -0.08),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x19444D59),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: Image.asset(
                            'assets/images/launchScreen@3x.png',
                          ).image,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.99, -1),
                                  child: Image.asset(
                                    'assets/images/font.png',
                                    width: 150,
                                    height: 100,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.95, -0.95),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.scale,
                                          alignment: Alignment.bottomCenter,
                                          duration: Duration(milliseconds: 150),
                                          reverseDuration:
                                              Duration(milliseconds: 150),
                                          child: PopupWidget(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png',
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.05),
                                  child: Container(
                                    width: 350,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 150),
                                            reverseDuration:
                                                Duration(milliseconds: 150),
                                            child: EreciptWidget(),
                                          ),
                                        );
                                      },
                                      text: 'E-RECIPT',
                                      options: FFButtonOptions(
                                        width: 150,
                                        height: 50,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              fontSize: 50,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        elevation: 1,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 1,
                                        ),
                                        borderRadius: 40,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.2),
                                  child: Container(
                                    width: 350,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 150),
                                            reverseDuration:
                                                Duration(milliseconds: 150),
                                            child: EwasteWidget(),
                                          ),
                                        );
                                      },
                                      text: 'E-WASTE',
                                      options: FFButtonOptions(
                                        width: 150,
                                        height: 10,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              fontSize: 50,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        elevation: 1,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 1,
                                        ),
                                        borderRadius: 40,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.14, -0.08),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x19444D59),
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: Image.asset(
                                          'assets/images/launchScreen@3x.png',
                                        ).image,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, -1),
                                                child: Image.asset(
                                                  'assets/images/font.png',
                                                  width: 150,
                                                  height: 100,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.95, -0.95),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .scale,
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        duration: Duration(
                                                            milliseconds: 150),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    150),
                                                        child: PopupWidget(),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    width: 60,
                                                    height: 60,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png',
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0, 0.05),
                                                child: Container(
                                                  width: 350,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  150),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      150),
                                                          child:
                                                              EreciptWidget(),
                                                        ),
                                                      );
                                                    },
                                                    text: 'E-RECIPT',
                                                    options: FFButtonOptions(
                                                      width: 150,
                                                      height: 50,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                                fontSize: 50,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                      elevation: 1,
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 1,
                                                      ),
                                                      borderRadius: 40,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0, -0.2),
                                                child: Container(
                                                  width: 350,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  150),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      150),
                                                          child: EwasteWidget(),
                                                        ),
                                                      );
                                                    },
                                                    text: 'E-WASTE',
                                                    options: FFButtonOptions(
                                                      width: 150,
                                                      height: 10,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                                fontSize: 50,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                      elevation: 1,
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 1,
                                                      ),
                                                      borderRadius: 40,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.14, -0.08),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x19444D59),
                                                    image: DecorationImage(
                                                      fit: BoxFit.fitWidth,
                                                      image: Image.asset(
                                                        'assets/images/launchScreen@3x.png',
                                                      ).image,
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -0.86,
                                                                      -0.95),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/font.png',
                                                                width: 170,
                                                                height: 100,
                                                                fit: BoxFit
                                                                    .fitWidth,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, -0.2),
                                                              child: Container(
                                                                width: 350,
                                                                height: 50,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                ),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    await Navigator
                                                                        .push(
                                                                      context,
                                                                      PageTransition(
                                                                        type: PageTransitionType
                                                                            .rightToLeft,
                                                                        duration:
                                                                            Duration(milliseconds: 150),
                                                                        reverseDuration:
                                                                            Duration(milliseconds: 150),
                                                                        child:
                                                                            EwasteWidget(),
                                                                      ),
                                                                    );
                                                                  },
                                                                  text:
                                                                      'E-WASTE',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 150,
                                                                    height: 10,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              50,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                    elevation:
                                                                        1,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        40,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.16,
                                                                      0.28),
                                                              child: Container(
                                                                width: 350,
                                                                height: 50,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                ),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    await Navigator
                                                                        .push(
                                                                      context,
                                                                      PageTransition(
                                                                        type: PageTransitionType
                                                                            .rightToLeft,
                                                                        duration:
                                                                            Duration(milliseconds: 150),
                                                                        reverseDuration:
                                                                            Duration(milliseconds: 150),
                                                                        child:
                                                                            ClutterCoinsWidget(),
                                                                      ),
                                                                    );
                                                                  },
                                                                  text:
                                                                      'CLUTTER COINS',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 150,
                                                                    height: 50,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              50,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                    elevation:
                                                                        1,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        40,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0.05),
                                                              child: Container(
                                                                width: 350,
                                                                height: 50,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                ),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    await Navigator
                                                                        .push(
                                                                      context,
                                                                      PageTransition(
                                                                        type: PageTransitionType
                                                                            .rightToLeft,
                                                                        duration:
                                                                            Duration(milliseconds: 150),
                                                                        reverseDuration:
                                                                            Duration(milliseconds: 150),
                                                                        child:
                                                                            EreciptWidget(),
                                                                      ),
                                                                    );
                                                                  },
                                                                  text:
                                                                      'E-RECEIPT',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 150,
                                                                    height: 50,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              50,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                    elevation:
                                                                        1,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        40,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.98,
                                                                      -0.92),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .scale,
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              150),
                                                                      reverseDuration:
                                                                          Duration(
                                                                              milliseconds: 150),
                                                                      child:
                                                                          PopupWidget(),
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 70,
                                                                  height: 70,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/user.png',
                                                                    fit: BoxFit
                                                                        .fitHeight,
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
                                      ],
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
            ],
          ),
        ],
      ),
    );
  }
}
