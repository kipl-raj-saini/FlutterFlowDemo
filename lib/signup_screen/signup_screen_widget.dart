import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_screen/login_screen_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreenWidget extends StatefulWidget {
  const SignupScreenWidget({Key key}) : super(key: key);

  @override
  _SignupScreenWidgetState createState() => _SignupScreenWidgetState();
}

class _SignupScreenWidgetState extends State<SignupScreenWidget> {
  TextEditingController confirmPasswordController;
  bool confirmPasswordVisibility;
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    confirmPasswordVisibility = false;
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF262D34),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFF262D34),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/login_2.png',
                  ).image,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/uiLogo_robinColored.png',
                            width: 240,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Color(0x66000000),
                            offset: Offset(0, -4),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Get Started!',
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF090F13),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFFDBE2E7),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.call_rounded,
                                    color: Color(0xFF090F13),
                                    size: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: emailAddressController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Your Email',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText: 'Enter your email here...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFDBE2E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFDBE2E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 24, 0, 24),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF2B343A),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: !passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Create Password',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText: 'Enter your password here...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFDBE2E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFDBE2E7),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 24, 0, 24),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passwordVisibility =
                                              !passwordVisibility,
                                        ),
                                        child: Icon(
                                          passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF95A1AC),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF2B343A),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: confirmPasswordController,
                                    obscureText: !confirmPasswordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Enter confirm password',
                                      hintText: 'Confirm Password',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 16, 0),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => confirmPasswordVisibility =
                                              !confirmPasswordVisibility,
                                        ),
                                        child: Icon(
                                          confirmPasswordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF757575),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    if (passwordController.text !=
                                        confirmPasswordController.text) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Passwords don\'t match!',
                                          ),
                                        ),
                                      );
                                      return;
                                    }

                                    final user = await createAccountWithEmail(
                                      context,
                                      emailAddressController.text,
                                      passwordController.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    final usersCreateData =
                                        createUsersRecordData(
                                      email: emailAddressController.text,
                                      photoUrl: '',
                                      uid: '',
                                      phoneNumber: '',
                                      displayName: functions.getDisplayName(),
                                    );
                                    await UsersRecord.collection
                                        .doc(user.uid)
                                        .update(usersCreateData);

                                    await Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            LoginScreenWidget(),
                                      ),
                                      (r) => false,
                                    );
                                  },
                                  text: 'Create Account',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 50,
                                    color: Color(0xFF4B39EF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                            color: Color(0xFFDBE2E7),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                                text: 'Login',
                                options: FFButtonOptions(
                                  width: 150,
                                  height: 35,
                                  color: Colors.white,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF4B39EF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  elevation: 0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
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
    );
  }
}
