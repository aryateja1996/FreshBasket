import 'package:app/exports.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:keyboard_visibility/keyboard_visibility.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;

  var _backgroundColor = Colors.white54;
  var _headingColor = Color(0xFFB40284A);

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

  bool _keyboardVisible = false;
  var result;

  @override
  void initState() {
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        setState(() {
          _keyboardVisible = visible;
          print("Keyboard State Changed : $visible");
        });
      },
    );
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
                      hint: 'What shall we call you',
                      icon: Icons.favorite,
                      saved: (String input) {
                        regName = input;
                         // ignore: prefer_function_declarations_over_variables
                          void Function() a = (){};
                          return a;
                      }, slient: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputWithIcon(
                      hint: 'Tell us where to deliver',
                      icon: Icons.home,
                      saved: (String input) {
                        regAddress = input;
                         // ignore: prefer_function_declarations_over_variables
                          void Function() a = (){};
                          return a;
                      },slient: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputWithIcon(
                      hint: 'How can we contact you',
                      icon: Icons.phone,
                      saved: (String input) {
                        regPhone = input;
                         // ignore: prefer_function_declarations_over_variables
                          void Function() a = (){};
                          return a;
                      },slient: true,
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Create Account'),
                onPressed: () {
                  

                  
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
            content: Text('Please Enter Email and Passord'),
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
        _headingColor = Color(0xFFB40284A);

        _headingTop = 100;

        _loginWidth = windowWidth;
        _loginOpacity = 1;

        _loginYOffset = windowHeight;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 270;

        _loginXOffset = 0;
        _registerYOffset = windowHeight;
        break;
      case 1:
        _backgroundColor = Color(0xFFBD34C59);
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
        _backgroundColor = Color(0xFFBD34C59);
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
                duration: Duration(milliseconds: 1000),
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
                              duration: Duration(milliseconds: 1000),
                              margin: EdgeInsets.only(
                                top: _headingTop,
                              ),
                              child: Text(
                                "Octo Mart",
                                style: TextStyle(
                                    color: _headingColor, fontSize: 28),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.symmetric(horizontal: 32),
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
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Center(
                        child: Image.asset("assets/images/splash_bg.png"),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_pageState != 0) {
                              _pageState = 0;
                            } else {
                              _pageState = 1;
                            }
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(32),
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFFB40284A),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
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
              padding: EdgeInsets.all(27),
              width: _loginWidth,
              height: _loginHeight,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 1000),
              transform:
                  Matrix4.translationValues(_loginXOffset, _loginYOffset, 1),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(_loginOpacity),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 4.2),
                        child: Text(
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
                          void Function() a = (){};
                          return a;
                        }, slient: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InputWithIcon(
                        icon: Icons.vpn_key,
                        hint: "Enter Password...",
                        slient: true,
                        saved: (input) {
                          logPassword = input;
                           // ignore: prefer_function_declarations_over_variables
                          void Function() a = (){};
                          return a;
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: <Widget>[
                      PrimaryButton(
                        btnText: "Login",
                        function: () {
                          print(logEmail);
                          print(logPassword);
                          if (logEmail == null && logPassword == null) {
                            _showMyDialog2();
                          } else {
                            
                          }
                        },
                      ),
                      TextButton(
                          onPressed: () {}, child: Text('forgot Password?')),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _pageState = 2;
                          });
                        },
                        child: OutlineBtn(
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
              padding: EdgeInsets.all(32),
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 1000),
              transform: Matrix4.translationValues(0, _registerYOffset, 1),
              decoration: BoxDecoration(
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
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
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
                          void Function() a = (){};
                          return a;
                        },slient: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputWithIcon(
                        icon: Icons.vpn_key,
                        hint: "Enter Password...",
                        slient: true,
                        saved: (input) {
                          regPassword = input;
                           // ignore: prefer_function_declarations_over_variables
                          void Function() a = (){};
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
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _pageState = 1;
                          });
                        },
                        child: OutlineBtn(
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
  InputWithIcon({required this.icon,required  this.hint, required this.saved,required this.slient});

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFBC7C7C7), width: 2),
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
                  color: Color(0xFFBB9B9B9),
                )),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                  border: InputBorder.none,
                  hintText: widget.hint,
                ),
                onChanged: widget.saved,
                obscureText: widget.slient
              ),
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

  const PrimaryButton({Key? key,required this.btnText, required this.function}) : super(key: key);
  

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFB40284A),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8),
      child: Center(
        child: TextButton(
          child: Text(
            widget.btnText,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed: widget.function,
        ),
      ),
    );
  }
}

class OutlineBtn extends StatefulWidget {
  final String btnText;

  const OutlineBtn({Key? key , required this.btnText}) : super(key: key);
  

  @override
  _OutlineBtnState createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFB40284A), width: 2),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          widget.btnText,
          style: TextStyle(color: Color(0xFFB40284A), fontSize: 16),
        ),
      ),
    );
  }
}
