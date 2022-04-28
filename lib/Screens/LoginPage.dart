import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final customIcon = Icon(Icons.search);
  final _formkey = GlobalKey<FormState>();
  //emails and pws
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailNameField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (email) => email != null && !EmailValidator.validate(email)
          ? "Enter a valid Email"
          : null,
      onSaved: (email) {
        emailEditingController.text = '$email';
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          prefixIconColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
              borderSide: BorderSide(width: 1)),
          hintText: 'Email '),
    );

    //password field
    final passwordNameField = TextFormField(
        autofocus: false,
        controller: passwordEditingController,
        obscureText: true,
        onSaved: (value) {
          passwordEditingController.text = 'value';
        },
        textInputAction: TextInputAction.done,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.vpn_key),
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            prefixIconColor: Colors.red,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.5)),
            hintText: 'Password ',
            suffixIcon: Icon(Icons.remove_red_eye_rounded)));

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 2,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              'assets/images/logo.jpg',
              height: 250,
              width: 120,
            ),
            const SizedBox(
              width: 120,
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xfffffffff),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  hintText: 'Search Products..',
                  hintStyle: const TextStyle(fontSize: 15),
                  suffixIcon: customIcon,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                          width: 9, color: Color.fromARGB(26, 204, 32, 32)))),
            ))
          ])),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 13, right: 13),
              height: 430,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: const Border.symmetric(),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 5),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      children: [
                        Text(
                          '         Login',
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 150),
                        Text(
                          'Register',
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Text(
                  //   'Please Login First',
                  //   style: GoogleFonts.poppins(
                  //       fontSize: 24, fontWeight: FontWeight.bold),
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  emailNameField,
                  SizedBox(
                    height: 20,
                  ),
                  passwordNameField,
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 220),
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 35,
                    decoration: BoxDecoration(
                        border: const Border.symmetric(),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'LOGIN SECURELY',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.red.withOpacity(0.8)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.red)))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        '        _________________',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '       Or Login With',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const Text('    _________________',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                    ),
                    child: Center(
                        child: Image.asset(
                      'assets/images/Google.png',
                      height: 55,
                      width: 40,
                    )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
