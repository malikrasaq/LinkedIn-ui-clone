import 'package:flutter/material.dart';
import 'package:linkedin_clone/components/custom_button.dart';
import 'package:linkedin_clone/components/header.dart';
import 'package:linkedin_clone/components/textfield.dart';
import 'package:linkedin_clone/screens/home.dart';
import 'package:linkedin_clone/utils/navigtion.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            const Header(text: 'Join now'),
            const SizedBox(
              height: 35.0,
            ),
            const Text(
              "Sign in",
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomField(text: 'Email or Phone'),
            const SizedBox(
              height: 25,
            ),
            const CustomField(text: 'Password'),
            const SizedBox(
              height: 35,
            ),
            CustomButton(
                text: "Continue", color: Colors.blue[800], onTap: () => AppNavigator(context: context).nextPage(
                screen: const Home(),
              ), ),
              
          ],
        ),
      )),
    );
  }
}
