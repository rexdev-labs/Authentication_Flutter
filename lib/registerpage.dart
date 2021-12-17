import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';
import 'package:uiecommerce/loginpage.dart';
import 'package:uiecommerce/services/services_authentications.dart';
import 'package:uiecommerce/static/color.dart';
import 'package:uiecommerce/static/widgetlibrary.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.5,
              color: ThemeApp.greens,
            ),
            ListView(
              children: [
                Container(
                  width: size.width * 1,
                  padding: EdgeInsets.only(
                    bottom: 150,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 50, bottom: 20),
                          child: Text(
                            "Halaman Register",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: ThemeApp.secondaryGreens,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/iconregister.png',
                          width: size.width * 0.9,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width * 0.05,
                          bottom: 10,
                          top: 20,
                        ),
                        child: Text(
                          "Full Name",
                          style: GoogleFonts.roboto(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: ThemeApp.greys,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.05),
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ThemeApp.inputcolor,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle_outlined),
                              border: InputBorder.none,
                              hintText: "Rexsi Yudi Putra",
                              hintStyle: TextStyle(
                                fontSize: 14,
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width * 0.05,
                          bottom: 10,
                          top: 20,
                        ),
                        child: Text(
                          "Email",
                          style: GoogleFonts.roboto(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: ThemeApp.greys,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.05),
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ThemeApp.inputcolor,
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail_outline),
                              border: InputBorder.none,
                              hintText: "example@gmail.com",
                              hintStyle: TextStyle(
                                fontSize: 14,
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width * 0.05,
                          bottom: 10,
                          top: 20,
                        ),
                        child: Text(
                          "Password",
                          style: GoogleFonts.roboto(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: ThemeApp.greys,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * 0.05),
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ThemeApp.inputcolor,
                        ),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.password_outlined,
                                color: Colors.grey,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              hintText: ".............",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              )),
                        ),
                      ),
                      Container(
                        width: size.width * 0.9,
                        margin: EdgeInsets.only(
                          left: size.width * 0.05,
                          top: 50,
                        ),
                        decoration: BoxDecoration(
                          color: ThemeApp.secondaryGreens,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () async {
                            AuthResult result = await context
                                .read<AuthenticationService>()
                                .signUp(
                                  emailController.text.trim(),
                                  passwordController.text.trim(),
                                );

                            if (!result.success) {
                              WidgetLibrary.showDialogError(context,
                                  'Oops.. Login Failed', result.message!);
                            }
                          },
                          child: Text(
                            "Register",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          child: Text(
                            "- Atau Registrasi Dengan -",
                            style: GoogleFonts.roboto(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.16,
                            height: size.width * 0.16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                  color: Colors.grey.shade400,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/apple.png',
                                width: 30,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.16,
                            height: size.width * 0.16,
                            margin: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                  color: Colors.grey.shade400,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/facebook.png',
                                width: 30,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.16,
                            height: size.width * 0.16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                  color: Colors.grey.shade400,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/google.png',
                                width: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sudah Memiliki Akun ? ",
                              style: GoogleFonts.roboto(
                                color: Colors.grey,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Login Sekarang",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: ThemeApp.secondaryGreens,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
