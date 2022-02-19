import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class YourQRWidget extends StatefulWidget {
  const YourQRWidget({Key key}) : super(key: key);

  @override
  _YourQRWidgetState createState() => _YourQRWidgetState();
}

class _YourQRWidgetState extends State<YourQRWidget> {
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
        List<UsersRecord> yourQRUsersRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final yourQRUsersRecord = yourQRUsersRecordList.isNotEmpty
            ? yourQRUsersRecordList.first
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
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, -0.24),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(-0.050000000000000044, 0),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.network(
                                'https://api.qrserver.com/v1/create-qr-code/?data=${currentUserEmail}&size=1000x100',
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag:
                                  'https://api.qrserver.com/v1/create-qr-code/?data=${currentUserEmail}&size=1000x100',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag:
                            'https://api.qrserver.com/v1/create-qr-code/?data=${currentUserEmail}&size=1000x100',
                        transitionOnUserGestures: true,
                        child: Image.network(
                          'https://api.qrserver.com/v1/create-qr-code/?data=${currentUserEmail}&size=1000x100',
                          width: 300,
                          height: MediaQuery.of(context).size.height * 3,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
