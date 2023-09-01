import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:mancityfc/core/routers.dart';
import 'package:mancityfc/core/styles.dart';
import 'package:mancityfc/features/authentication/presentation/views/widgets/custom_button.dart';
import 'package:mancityfc/features/authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

final auth = FirebaseAuth.instance;

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final formkey = GlobalKey<FormState>();
  var email = '';
  var password = '';
  var isLogin = true;
  var isLoading=false;
  void submit() async {
    final isValid = formkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formkey.currentState!.save();
    try {
      if (isLogin) {
        final user = await auth.signInWithEmailAndPassword(
            email: email, password: password);
        GoRouter.of(context).push(AppRouter.kHome);
      } else {
        final user = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Welcome, Cityzen')));
        GoRouter.of(context).push(AppRouter.kHome);
      }
    } on FirebaseAuthException catch (error) {
      print(error.toString());
      if (error.code == 'email-already-in-use') {}
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error.message ?? '')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFA5CAF4),
        body: SafeArea(
          child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 120,
                      width: 120,
                      image: AssetImage(
                        'assets/images/some/mancity.png',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Manchester City FC",
                        style: Styles.font,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty ||
                              value.trim().length < 4) {
                            return 'enter a valid email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email = value!;
                        },
                        labelText: 'Email'),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty ||
                              value.trim().length < 4) {
                            return 'enter a valid password';
                          }
                          return null;
                        },
                        obscureText: true,
                        onSaved: (value) {
                          password = value!;
                        },
                        labelText: 'Password'),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: submit,
                      child: isLogin
                          ? Text(
                              'Sign in',
                              style: Styles.font.copyWith(fontSize: 20),
                            )
                          : Text(
                              'Sign up',
                              style: Styles.font.copyWith(fontSize: 20),
                            ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        isLogin
                            ? Row(
                                children: [
                                  Text(
                                    "Don't Have an Account?",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Fjalla'),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          isLogin = !isLogin;
                                        });
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Color(0XFF001838),
                                            fontSize: 20,
                                            fontFamily: 'Fjalla'),
                                      )),
                                ],
                              )
                            : Row(
                                children: [
                                  Text(
                                    "Already have an account?",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Fjalla'),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          isLogin = !isLogin;
                                        });
                                      },
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                            color: Color(0XFF001838),
                                            fontSize: 20,
                                            fontFamily: 'Fjalla'),
                                      ))
                                ],
                              )
                      ],
                    )
                  ],
                ),
             
          ),
        ));
  }
}
