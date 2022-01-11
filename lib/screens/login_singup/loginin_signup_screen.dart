import 'package:course_app/screens/login_singup/login_page.dart';
import 'package:course_app/screens/login_singup/signup_page.dart';
import 'package:course_app/screens/login_singup/slide_left_route.dart';
import 'package:course_app/screens/login_singup/slide_right_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginInSignUpScreen extends StatefulWidget {
  const LoginInSignUpScreen({Key? key}) : super(key: key);

  @override
  _LoginInSignUpScreenState createState() => _LoginInSignUpScreenState();
}

class _LoginInSignUpScreenState extends State<LoginInSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 120,
                bottom: 22,
              ),
              child: Center(
                child: Text(
                  "Hello",
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      SlideRightRoute(
                        page: const SignUpPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * .55,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 22,
                        top: 28,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8,
                            ),
                            child: Text(
                              "Sign Up!",
                              style: GoogleFonts.sourceCodePro(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: Text(
                              "New Here?",
                              style: GoogleFonts.sourceCodePro(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              top: 8.0,
                            ),
                            child: Text(
                              "Don't worry, just Sign up to gain access to the amazing app",
                              style: GoogleFonts.sourceCodePro(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      SlideLeftRoute(
                        page: const LoginPage(),
                      ),
                    );
                  },
                  child: Hero(
                    tag: "a",
                    child: Material(
                      child: Container(
                        height: MediaQuery.of(context).size.height * .50,
                        width: MediaQuery.of(context).size.width * .45,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 22,
                            top: 28,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8.0,
                                ),
                                child: Text(
                                  'Sign In',
                                  style: GoogleFonts.sourceCodePro(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Returning?",
                                  style: GoogleFonts.sourceCodePro(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  right: 10.0,
                                ),
                                child: Text(
                                  "Just Sign in to resume what you were doing.",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.sourceCodePro(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 6,
                    ),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 6,
                    ),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 6,
                    ),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
