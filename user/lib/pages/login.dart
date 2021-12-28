// ignore_for_file: avoid_unnecessary_containers, avoid_print, unnecessary_null_comparison, use_full_hex_values_for_flutter_colors, sized_box_for_whitespace

import 'package:app/exports.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:keyboard_visibility/keyboard_visibility.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 1;

  var _backgroundColor = Colors.white54;

  var _headingColor = const Color(0xFFB40284A);

  double _headingTop = 100;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double _loginWidth = 0;
  double _loginHeight = 0;
  double _loginOpacity = 1;

  double _loginYOffset = 0;
  double _loginXOffset = 0;
  double _registerYOffset = 0;
  double _registerHeight = 0;

  double windowWidth = 0;
  double windowHeight = 0;

  final bool _keyboardVisible = false;
  // ignore: prefer_typing_uninitialized_variables
  var result;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Address & Phone Number Please'),
            content: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: ListBody(
                  children: <Widget>[
                    InputWithIcon(
                      hint: 'Name',
                      icon: Icons.favorite,
                      saved: (String input) {
                        regName = input;
                        // ignore: prefer_function_declarations_over_variables
                        void Function() a = () {};
                        return a;
                      },
                      slient: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InputWithIcon(
                      hint: 'Address',
                      icon: Icons.home,
                      saved: (String input) {
                        regAddress = input;
                        // ignore: prefer_function_declarations_over_variables
                        void Function() a = () {};
                        return a;
                      },
                      slient: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InputWithIcon(
                      hint: 'Phone Number',
                      icon: Icons.phone,
                      saved: (String input) {
                        regPhone = input;
                        // ignore: prefer_function_declarations_over_variables
                        void Function() a = () {};
                        return a;
                      },
                      slient: false,
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Create Account'),
                onPressed: () {
                  signUp(context);
                },
              ),
            ],
          );
        },
      );
    }

    Future<void> _showMyDialog2() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Please Enter Email and Passord'),
            actions: <Widget>[
              TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;

    _loginHeight = windowHeight - 270;
    _registerHeight = windowHeight - 270;

    switch (_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = Colors.greenAccent;

        _headingTop = 100;

        _loginWidth = windowWidth;
        _loginOpacity = 1;

        _loginYOffset = windowHeight;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

        _loginXOffset = 0;
        _registerYOffset = windowHeight;
        break;
      case 1:
        _backgroundColor = Colors.greenAccent;
        _headingColor = Colors.white;

        _headingTop = 90;

        _loginWidth = windowWidth;
        _loginOpacity = 1;

        _loginYOffset = _keyboardVisible ? 40 : 270;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

        _loginXOffset = 0;
        _registerYOffset = windowHeight;
        break;
      case 2:
        _backgroundColor = Colors.greenAccent;
        _headingColor = Colors.white;

        _headingTop = 80;

        _loginWidth = windowWidth - 40;
        _loginOpacity = 0.7;

        _loginYOffset = _keyboardVisible ? 30 : 240;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 240;

        _loginXOffset = 20;
        _registerYOffset = _keyboardVisible ? 55 : 270;
        _registerHeight = _keyboardVisible ? windowHeight : windowHeight - 270;
        break;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            AnimatedContainer(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(milliseconds: 1000),
                color: _backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _pageState = 0;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            AnimatedContainer(
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(milliseconds: 1000),
                              margin: EdgeInsets.only(
                                top: _headingTop,
                              ),
                              child: Text(
                                "Fresh Basket",
                                style: TextStyle(
                                    color: _headingColor, fontSize: 28),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Text(
                                '''You stay home we deliver
                            ''',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: _headingColor, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Center(
                        child: Image.asset("assets/splash_bg.png"),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _pageState = 1;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(32),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF37121),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            AnimatedContainer(
              padding: const EdgeInsets.all(27),
              width: _loginWidth,
              height: _loginHeight,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 1000),
              transform:
                  Matrix4.translationValues(_loginXOffset, _loginYOffset, 1),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(_loginOpacity),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 4.2),
                        child: const Text(
                          "Login To Continue",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      InputWithIcon(
                        icon: Icons.email,
                        hint: "Enter Email...",
                        saved: (input) {
                          logEmail = input;
                          // ignore: prefer_function_declarations_over_variables
                          void Function() a = () {};
                          return a;
                        },
                        slient: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputWithIcon(
                        icon: Icons.vpn_key,
                        hint: "Enter Password...",
                        slient: false,
                        saved: (input) {
                          logPassword = input;
                          // ignore: prefer_function_declarations_over_variables
                          void Function() a = () {};
                          return a;
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: <Widget>[
                      PrimaryButton(
                        btnText: "Login",
                        function: () {
                          print(logEmail);
                          print(logPassword);
                          login(context);
                          if (logEmail == null && logPassword == null) {
                            _showMyDialog2();
                          } else {}
                        },
                      ),
                      //TextButton(onPressed: () {}, child: const Text('forgot Password?')),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _pageState = 2;
                          });
                        },
                        child: const OutlineBtn(
                          btnText: "Create New Account",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              height: _registerHeight,
              padding: const EdgeInsets.all(32),
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 1000),
              transform: Matrix4.translationValues(0, _registerYOffset, 1),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: const Text(
                          "Create a New Account",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      InputWithIcon(
                        icon: Icons.email,
                        hint: "Enter Email...",
                        saved: (input) {
                          regEmail = input;
                          // ignore: prefer_function_declarations_over_variables
                          void Function() a = () {};
                          return a;
                        },
                        slient: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InputWithIcon(
                        icon: Icons.vpn_key,
                        hint: "Enter Password...",
                        slient: true,
                        saved: (input) {
                          regPassword = input;
                          // ignore: prefer_function_declarations_over_variables
                          void Function() a = () {};
                          return a;
                        },
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      PrimaryButton(
                        btnText: "Create Account",
                        function: () {
                          print('clicked');
                          _showMyDialog();
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _pageState = 1;
                          });
                        },
                        child: const OutlineBtn(
                          btnText: "Back To Login",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputWithIcon extends StatefulWidget {
  final IconData icon;
  final String hint;
  final VoidCallback Function(String) saved;
  final bool slient;
  const InputWithIcon(
      {Key? key,
      required this.icon,
      required this.hint,
      required this.saved,
      required this.slient})
      : super(key: key);

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffbc7c7c7), width: 2),
          borderRadius: BorderRadius.circular(50)),
      child: Form(
        key: _formKey,
        child: Row(
          children: <Widget>[
            Container(
                width: 60,
                child: Icon(
                  widget.icon,
                  size: 20,
                  color: const Color(0xffbb9b9b9),
                )),
            Expanded(
              child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 20),
                    border: InputBorder.none,
                    hintText: widget.hint,
                  ),
                  onChanged: widget.saved,
                  obscureText: widget.slient),
            )
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatefulWidget {
  final String btnText;
  final VoidCallback function;

  const PrimaryButton({Key? key, required this.btnText, required this.function})
      : super(key: key);

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffb40284a),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(8),
      child: Center(
        child: TextButton(
          child: Text(
            widget.btnText,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed: widget.function,
        ),
      ),
    );
  }
}

class OutlineBtn extends StatefulWidget {
  final String btnText;

  const OutlineBtn({Key? key, required this.btnText}) : super(key: key);

  @override
  _OutlineBtnState createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffb40284a), width: 2),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: const TextStyle(color: Color(0xffb40284a), fontSize: 16),
        ),
      ),
    );
  }
}
