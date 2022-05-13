import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formkey = GlobalKey<FormState>();

  //editing controller
  final customIcon = Icon(Icons.search);
  final NameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final phonenumberEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();
  final ReferralEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // name field
    final firstnameField = TextFormField(
        autofocus: false,
        controller: NameEditingController,
        onSaved: (value) {
          passwordEditingController.text = 'value';
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.account_circle_rounded),
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          prefixIconColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
              borderSide: BorderSide(width: 1)),
          hintText: 'Name',
        ));
    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        onSaved: (value) {
          passwordEditingController.text = 'value';
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          prefixIconColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
              borderSide: BorderSide(width: 1)),
          hintText: 'E-mail',
        ));
    //phone number field
    final phonenumberField = TextFormField(
        autofocus: false,
        controller: phonenumberEditingController,
        onSaved: (value) {
          passwordEditingController.text = 'value';
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.contact_phone),
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          prefixIconColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
              borderSide: BorderSide(width: 1)),
          hintText: 'Phone Number',
        ));

    //password field
    final passwordNameField = TextFormField(
        autofocus: false,
        controller: passwordEditingController,
        obscureText: true,
        onSaved: (value) {
          passwordEditingController.text = 'value';
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          prefixIconColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
              borderSide: BorderSide(width: 1)),
          hintText: 'Password',
        ));
    //confirm password field
    final confirmpasswordNameField = TextFormField(
        autofocus: false,
        controller: confirmPasswordEditingController,
        obscureText: true,
        onSaved: (value) {
          passwordEditingController.text = 'value';
        },
        textInputAction: TextInputAction.done,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          prefixIconColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
              borderSide: BorderSide(width: 1)),
          hintText: 'Confirm Password',
        ));
    //referral name field
    final ReferralNameField = TextFormField(
        autofocus: false,
        controller: ReferralEditingController,
        onSaved: (value) {
          passwordEditingController.text = 'value';
        },
        textInputAction: TextInputAction.done,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.manage_accounts_sharp),
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          prefixIconColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(),
              borderSide: BorderSide(width: 1)),
          hintText: 'Referral(if any)',
        ));

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 2,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo.jpg',
                    height: 250,
                    width: 120,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfffffffff),
                        isDense: true,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 15),
                        hintText: 'Search Products..',
                        hintStyle: const TextStyle(fontSize: 15),
                        suffixIcon: customIcon,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                                width: 9,
                                color: Color.fromARGB(26, 204, 32, 32)))),
                  ))
                ])),
        body: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
                child: Column(children: [
              Container(
                  margin: EdgeInsets.only(left: 13, right: 13),
                  height: MediaQuery.of(context).size.height,
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
                              '        Register',
                              style: GoogleFonts.poppins(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 150),
                            Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //firstname
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: firstnameField,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //email
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: emailField,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //phone number
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: phonenumberField,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //password
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: passwordNameField,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //confirm password
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: confirmpasswordNameField,
                      ),
                      SizedBox(
                        height: 20,
                      ), //Referral field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: ReferralNameField,
                      ),
                      SizedBox(
                        height: 30,
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
                              'REGISTER',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.red.withOpacity(0.8)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                            color: Colors.red)))),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            '        _______________',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '     Or Register With',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const Text('    _________________',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold))
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
                  ))
            ]))));
  }
}
