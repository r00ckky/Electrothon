import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestWidget extends StatefulWidget {
  const RequestWidget({Key key}) : super(key: key);

  @override
  _RequestWidgetState createState() => _RequestWidgetState();
}

class _RequestWidgetState extends State<RequestWidget> {
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
        List<UsersRecord> requestUsersRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final requestUsersRecord = requestUsersRecordList.isNotEmpty
            ? requestUsersRecordList.first
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
          body: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
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
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.09, 0.4),
                child: Container(
                  width: 300,
                  height: 250,
                  decoration: BoxDecoration(),
                  child: Image.asset(
                    'assets/images/19198362.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.07, -0.45),
                child: Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF489B4C),
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.87, 0.12),
                        child: Image.asset(
                          'assets/images/download_(1).png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.74, 0),
                        child: Text(
                          'your request has been \naccepted successfully',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 20,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, -0.86),
                child: Image.asset(
                  'assets/images/font.png',
                  width: 200,
                  height: 50,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
