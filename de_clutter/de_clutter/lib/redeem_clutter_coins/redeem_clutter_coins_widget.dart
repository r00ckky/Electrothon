import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RedeemClutterCoinsWidget extends StatefulWidget {
  const RedeemClutterCoinsWidget({Key key}) : super(key: key);

  @override
  _RedeemClutterCoinsWidgetState createState() =>
      _RedeemClutterCoinsWidgetState();
}

class _RedeemClutterCoinsWidgetState extends State<RedeemClutterCoinsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).dark900,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).dark900,
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
              alignment: AlignmentDirectional(0, 0.2),
              child: Image.asset(
                'assets/images/Wavy_Tech-08_Single-04.png',
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.85),
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Gifts are coming soon..',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.black,
                          fontSize: 25,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
