import 'dart:convert';

// import 'package:cube_transition/cube_transition.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

import 'package:http/http.dart' as http;

import 'package:delayed_display/delayed_display.dart';

import 'package:humaira/color/color.dart';
import 'package:humaira/pages/navigation/bottom_navigator.dart';

import 'package:shared_preferences/shared_preferences.dart';

// import 'forgot_password.dart';

class Login2Page extends StatefulWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  _Login2PageState createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var referalController = TextEditingController();

  bool _isVisible = false;
  bool _kelihatan = false;

  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void formRegister() {
    setState(() {
      _kelihatan = !_kelihatan;
    });
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? val = pref.getString("login");
    if (val != null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => BottomNavgigator(menu: 0)),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaPrimer(),
      body: SingleChildScrollView(
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: const Duration(seconds: 1),
          child: Container(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              children: [
                const SizedBox(height: 100),
                DelayedDisplay(
                  delay: const Duration(seconds: 1),
                  child: Image.asset('assets/images/logo_putih.png',
                      width: 150.0, height: 150.0),
                ),
                DelayedDisplay(
                  delay: const Duration(seconds: 1),
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, 10),
                            )
                          ],
                          color: warnaSekunder(),
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(30))),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          DelayedDisplay(
                            delay: const Duration(seconds: 1),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                              child: TextField(
                                  controller: usernameController,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.account_circle),
                                    labelText: 'Username',
                                    fillColor: warnaPrimerOpacity(),
                                    filled: true,
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: const BorderSide(
                                            color: Colors.blue, width: 1.0)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: const BorderSide(
                                            color: Colors.white, width: 1.0)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: const BorderSide(
                                            color: Colors.red, width: 1.0)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: const BorderSide(
                                            color: Colors.red, width: 1.0)),
                                  )),
                            ),
                          ),
                          const SizedBox(height: 20),
                          DelayedDisplay(
                            delay: const Duration(seconds: 1),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                              child: TextField(
                                  controller: passwordController,
                                  obscureText: _isVisible ? false : true,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        RegExp(r"\s\b|\b\s"))
                                  ],
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.lock),
                                    labelText: 'Password',
                                    suffixIcon: IconButton(
                                      onPressed: () => updateStatus(),
                                      icon: Icon(_isVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    fillColor: warnaPrimerOpacity(),
                                    filled: true,
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: const BorderSide(
                                            color: Colors.blue, width: 1.0)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: const BorderSide(
                                            color: Colors.white, width: 1.0)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: const BorderSide(
                                            color: Colors.red, width: 1.0)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: const BorderSide(
                                            color: Colors.red, width: 1.0)),
                                  )),
                            ),
                          ),
                          const SizedBox(height: 5),
                          FlutterPwValidator(
                              successColor: warnaPrimer(),
                              controller: passwordController,
                              minLength: 5,
                              uppercaseCharCount: 0,
                              numericCharCount: 0,
                              specialCharCount: 0,
                              width: 230,
                              height: 20,
                              onSuccess: () {
                                passwordValid();
                              }),
                          Visibility(
                              visible: _kelihatan,
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  DelayedDisplay(
                                    delay: const Duration(seconds: 1),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: TextField(
                                          controller: emailController,
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(Icons.mail),
                                            labelText: 'Email',
                                            fillColor: warnaPrimerOpacity(),
                                            filled: true,
                                            contentPadding: const EdgeInsets.fromLTRB(
                                                20, 10, 20, 10),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.blue,
                                                    width: 1.0)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.white,
                                                    width: 1.0)),
                                            errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.red,
                                                    width: 1.0)),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                    borderSide: const BorderSide(
                                                        color: Colors.red,
                                                        width: 1.0)),
                                          )),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  DelayedDisplay(
                                    delay: const Duration(seconds: 1),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: TextField(
                                          controller: referalController,
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(Icons.pin),
                                            labelText: 'Kode Referal',
                                            fillColor: warnaPrimerOpacity(),
                                            filled: true,
                                            contentPadding: const EdgeInsets.fromLTRB(
                                                20, 10, 20, 10),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.blue,
                                                    width: 1.0)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.white,
                                                    width: 1.0)),
                                            errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.red,
                                                    width: 1.0)),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                    borderSide: const BorderSide(
                                                        color: Colors.red,
                                                        width: 1.0)),
                                          )),
                                    ),
                                  ),
                                ],
                              )),
                          buttonAction(
                              usernameController.text,
                              passwordController.text,
                              emailController.text,
                              referalController.text),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonAction(username, password, email, referal) {
    if (_kelihatan == true) {
      return Column(children: [
        const SizedBox(height: 20),
        DelayedDisplay(
          delay: const Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        color: warnaPrimer(),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      register();
                    },
                    child: const Text('SIGNUP'),
                  ),
                ],
              ),
            ),
          ),
        ),
        DelayedDisplay(
          delay: const Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 14),
              ),
              onPressed: () {
                formRegister();
              },
              child: Text(
                'LOGIN',
                style: TextStyle(color: warnaPrimer()),
              ),
            ),
          ),
        ),
      ]);
    } else if (_kelihatan == false) {
      return Column(
        children: [
          DelayedDisplay(
            delay: const Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   CubePageRoute(
                  //     enterPage: ForgotPassword(),
                  //     exitPage: Login2Page(),
                  //     duration: Duration(milliseconds: 900),
                  //   ),
                  // );
                },
                child: const Text('Forgot Password?'),
              ),
            ),
          ),
          DelayedDisplay(
            delay: const Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: warnaPrimer(),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, 10),
                            )
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        login();
                      },
                      child: const Text('LOGIN'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DelayedDisplay(
            delay: const Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () {
                  formRegister();
                },
                child: Text(
                  'SIGNUP',
                  style: TextStyle(color: warnaPrimer()),
                ),
              ),
            ),
          ),
        ],
      );
    }
    return const Text("Error");
  }

  void login() async {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse(
              "https://ebc-community.com/REST_API/index.php/authentication/login"),
          headers: {
            "X-API-KEY": "ilAvnYfs3TJsOkMXnWnN",
            "Authorization":
                'Basic YmluYSBiZXJzYW1hIG5pYWdhIGRpZ2l0YWw6YmJuZGpheWFqYXlhamF5YQ==',
          },
          body: ({
            "username": usernameController.text,
            "password": passwordController.text
          }));
      if (response.statusCode == 200) {
        final body = json.decode(response.body);
        print("Berhasil login " + body["username"] + " id : " + body['id_konsumen']);
        pageRoute(body['id_konsumen'], body["username"], context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Username atau Password salah")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Username atau Password masih kosong")));
    }
  }

  void register() async {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        emailController.text.isNotEmpty) {
      if (EmailValidator.validate(emailController.text)) {
        var response = await http.post(
            Uri.parse(
                "https://ebc-community.com/REST_API/index.php/authentication/registration"),
            headers: {
              "X-API-KEY": "ilAvnYfs3TJsOkMXnWnN",
              "Authorization":
                  'Basic YmluYSBiZXJzYW1hIG5pYWdhIGRpZ2l0YWw6YmJuZGpheWFqYXlhamF5YQ==',
            },
            body: ({
              "username": usernameController.text,
              "password": passwordController.text,
              "email": emailController.text,
              "sponsor": referalController.text
            }));
        if (response.statusCode == 200) {
          final body = json.decode(response.body);
          print("Berhasil Registrasi dengan id " + body['data']);
          pageRoute(body['data'], usernameController.text, context);
        } else {
          final body = json.decode(response.body);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(body['message'])));
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Email tidak valid')));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Username, Password dan Email harus diisi')));
    }
  }

  void pageRoute(id, username, context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("login", id);
    await pref.setString("username", username);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => BottomNavgigator(menu:0)), (route) => false);
  }

  void passwordValid() {
  }
}
