import 'package:flutter/material.dart';
import 'package:flutter_application_1/Colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

final _x = GlobalKey<FormState>();
bool b = true;

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: _x,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    children: [
                      const InputField(
                        ErrorMessage: "Please entre Your Full Name",
                        inputText: "Full Name",
                        iconInput: LineIcons.user,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const InputField(
                        ErrorMessage: "Wrong Email !",
                        inputText: "Email",
                        iconInput: Icons.email_outlined,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        obscureText: b == true ? true : false,
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(
                          fontSize: 20,
                          color: Bl,
                        ),
                        cursorColor: Bl,
                        decoration: InputDecoration(
                            errorStyle:
                                const TextStyle(fontWeight: FontWeight.bold),
                            focusColor: Bl,
                            fillColor: Bl,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Bl)),
                            suffixIcon: GestureDetector(
                              child: b == false
                                  ? LineIcon.eye(
                                      color: Bl,
                                      size: 30,
                                    )
                                  : LineIcon.eyeSlash(
                                      color: Bl,
                                      size: 30,
                                    ),
                              onTap: () {
                                setState(() {
                                  b = !b;
                                });
                              },
                            ),
                            hintText: "Password",
                            hintStyle: const TextStyle(fontSize: 17)),
                        maxLines: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Short Password";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      connexionBouttom(
                        Bgcolor: KP,
                        connexionText: "Join Us",
                      ),
                      const Text(
                        "By continuing, you agree to accept our ",
                        style: TextStyle(fontSize: 12),
                      ),
                      const Text(
                        "Privacy Policy & Terms of Service.",
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Or",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const connexionBouttom(
                        Bgcolor: Color(0xff3A5998),
                        connexionText: "SIGN UP WITH FACEBOOK",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      connexionBouttom(
                        Bgcolor: KP3,
                        connexionText: "SIGN UP WITH GOOGLE",
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class connexionBouttom extends StatelessWidget {
  final Color Bgcolor;
  final String connexionText;
  const connexionBouttom({
    super.key,
    required this.Bgcolor,
    required this.connexionText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () {
                  if (_x.currentState!.validate() == true) {}
                },
                style: ElevatedButton.styleFrom(
                    overlayColor: nil,
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Bgcolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getIcon(connexionText),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      child: Text(
                        connexionText,
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ))),
      ],
    );
  }
}

class InputField extends StatelessWidget {
  final IconData iconInput;
  final String inputText;
  final String ErrorMessage;
  const InputField({
    super.key,
    required this.iconInput,
    required this.inputText,
    required this.ErrorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        fontSize: 20,
        color: Bl,
      ),
      cursorColor: Bl,
      decoration: InputDecoration(
          errorStyle: const TextStyle(fontWeight: FontWeight.bold),
          focusColor: Bl,
          fillColor: Bl,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Bl)),
          suffixIcon: Icon(
            color: Bl,
            iconInput,
            size: 30,
          ),
          hintText: inputText,
          hintStyle: const TextStyle(fontSize: 17)),
      maxLines: 1,
      validator: (value) {
        if (value!.isEmpty) {
          return ErrorMessage;
        } else {
          return null;
        }
      },
    );
  }
}

Widget getIcon(String connexionText) {
  if (connexionText == "SIGN UP WITH GOOGLE") {
    return const LineIcon.googlePlus();
  } else if (connexionText == "SIGN UP WITH FACEBOOK") {
    return const LineIcon.facebook();
  } else if (connexionText == "SIGN UP WITH TWITTER") {
    return const LineIcon.twitter();
  } else {
    return const LineIcon
        .user(); // Default icon if none of the conditions match
  }
}
