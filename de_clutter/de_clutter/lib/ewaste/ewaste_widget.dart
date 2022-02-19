import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../request/request_widget.dart';
import '../track/track_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EwasteWidget extends StatefulWidget {
  const EwasteWidget({Key key}) : super(key: key);

  @override
  _EwasteWidgetState createState() => _EwasteWidgetState();
}

class _EwasteWidgetState extends State<EwasteWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<UsersRecord> ewasteUsersRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final ewasteUsersRecord = ewasteUsersRecordList.isNotEmpty
            ? ewasteUsersRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF3326AA),
            automaticallyImplyLeading: true,
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          backgroundColor: FlutterFlowTheme.of(context).dark900,
          body: Align(
            alignment: AlignmentDirectional(-0.14, -0.08),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x19884BA9),
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
                    alignment: AlignmentDirectional(0, -0.45),
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF4B38EF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.2),
                        child: Text(
                          'E-WASTE',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 35,
                                fontWeight: FontWeight.w200,
                              ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.02, -0.05),
                    child: InkWell(
                      onTap: () async {
                        final usersUpdateData = {
                          'cluttercoin': FieldValue.increment(20),
                        };
                        await currentUserReference.update(usersUpdateData);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RequestWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, -0.2),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 150),
                                  reverseDuration: Duration(milliseconds: 150),
                                  child: RequestWidget(),
                                ),
                              );
                              final usersUpdateData = {
                                'cluttercoin': FieldValue.increment(20),
                              };
                              await currentUserReference
                                  .update(usersUpdateData);
                            },
                            child: Text(
                              'MAKE REQUEST',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w200,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.1),
                    child: Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.2),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 150),
                                reverseDuration: Duration(milliseconds: 150),
                                child: TrackWidget(),
                              ),
                            );
                          },
                          child: Text(
                            'TRACK REQUEST',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w200,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
