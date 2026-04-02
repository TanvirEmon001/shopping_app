import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();

}
class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(context){
    return Scaffold(
      body: Center(child: Text("This is home screen"),),
    );
  }

}