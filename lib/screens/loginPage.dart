import 'package:flutter/material.dart';
import 'package:login_register/screens/registerPage.dart';
import 'package:login_register/shared/accountQuestion.dart';
import 'package:login_register/shared/countryDialPicker.dart';
import 'package:login_register/shared/customButton.dart';
import 'package:login_register/shared/labels.dart';
import 'package:login_register/shared/mainTitle.dart';

class LoginPage extends StatelessWidget {
  static const String loginStringKey = '/LoginPage';

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Image.asset(
                "images/sign.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Labels(txt: "Welcome to Fashion Daily"),
                    MainTitle(
                      lblTxt: "Sign in",
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Labels(
                          txt: "Phone Number",
                          fntSize: 14,
                        ),
                        CountryDialPicker(),
                      ],
                    ),
                    SizedBox(height: 10,),
                    CustomButton(
                      btnTxt: "Sign in",
                      onPress: () {},
                    ),
                    Center(
                        child: Labels(
                      txt: "Or",
                      fntSize: 16,
                    )),
                    CustomButton(
                      isOutlineBorder: true,
                      txtClr: Colors.blue,
                      btnTxt: "Sign in with google",
                      onPress: () {},
                    ),
                    AccountQuestion(
                      askTxt: 'Doesn\'t have any account?',
                      btnTxt: 'Register here',
                      onPress: () {
                        Navigator.pushReplacementNamed(
                            context, RegisterPage.loginStringKey);
                      },
                      btnTxtColor: Colors.blue,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Use the application according to policy rules, Any',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'kinds of violations will be subject to sanctions.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
