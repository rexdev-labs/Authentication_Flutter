import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';
import 'package:uiecommerce/registerpage.dart';
import 'package:uiecommerce/services/services_authentications.dart';
import 'package:uiecommerce/static/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Container(
            width: size.width * 1,
            height: size.height * 1,
            color: ThemeApp.greens,
          ),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: 100,
                ),
                width: size.width * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: Text(
                          "Halaman Login",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA3E036),
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/iconlogin.png',
                        width: size.width * 0.9,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: size.width * 0.05,
                        top: 20,
                      ),
                      child: Text(
                        "Email",
                        style: GoogleFonts.roboto(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7B7D7F),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.9,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, top: 10, bottom: 20),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F6F8),
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail_outline_outlined,
                            color: Colors.grey,
                          ),
                          hintText: "example@gmail.com",
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: size.width * 0.05,
                      ),
                      child: Text(
                        "Password",
                        style: GoogleFonts.roboto(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7B7D7F),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.9,
                      margin: EdgeInsets.only(
                          left: size.width * 0.05, top: 10, bottom: 20),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F6F8),
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.grey,
                          ),
                          hintText: ".............",
                          hintStyle: TextStyle(
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.9,
                      height: 50,
                      margin: EdgeInsets.only(left: size.width * 0.05),
                      decoration: BoxDecoration(
                        color: Color(0xffA3E036),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          context.read<AuthenticationService>().signIn(
                                emailController.text.trim(),
                                passwordController.text.trim(),
                              );
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                        ),
                        child: Text("- Atau Login Dengan -"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.16,
                          height: size.width * 0.16,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                                color: Colors.grey.shade300,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/apple.png',
                              width: 30,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          width: size.width * 0.16,
                          height: size.width * 0.16,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                                color: Colors.grey.shade300,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
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
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                                color: Colors.grey.shade300,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
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
                          Text("Belum memiliki akun ?"),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                              );
                            },
                            child: Text(
                              " Registrasi Sekarang",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff94D323),
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
    );
  }
}
