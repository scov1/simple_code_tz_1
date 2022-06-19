import 'package:flutter/material.dart';
import 'package:simple_code_tz_1/generated/l10n.dart';
import 'package:simple_code_tz_1/screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? login;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).auth),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            S.of(context).inputLoginAndPassword,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                      TextFormField(
                        maxLength: 8,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.of(context).inputErrorCheckLogin;
                          }
                          if (value.length < 3) {
                            return S.of(context).inputErrorLoginIsShort;
                          }
                          return null;
                        },
                        onSaved: (value) {
                          login = value;
                        },
                        style: const TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          hintText:  S.of(context).login,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        maxLength: 16,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return  S.of(context).inputErrorCheckPassword;
                          }
                          if (value.length < 8) {
                            return  S.of(context).inputErorPasswordIsShort;
                          }
                          return null;
                        },
                        onSaved: (value) {
                          password = value;
                        },
                        style: const TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          hintText:  S.of(context).password,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                          _formKey.currentState?.save();
                          if (login == 'qwerty' && password == '123456ab') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const HomeScreen(title: 'TZ-3',),
                              ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(S.of(context).tryAgain),
                                actions: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(S.of(context).close),
                                  ),
                                ],
                              ),
                            );
                          }
                        }
                      },
                      child: Text(S.of(context).signIn,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
