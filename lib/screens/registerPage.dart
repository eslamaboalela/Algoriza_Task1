import 'package:flutter/material.dart';
import 'package:login_register/screens/loginPage.dart';
import 'package:login_register/shared/accountQuestion.dart';
import 'package:login_register/shared/customButton.dart';
import 'package:login_register/shared/customFormField.dart';
import 'package:login_register/shared/labels.dart';
import 'package:login_register/shared/mainTitle.dart';
import 'package:login_register/shared/countryDialPicker.dart';

class RegisterPage extends StatelessWidget {
  static const String loginStringKey = '/RegisterPage';

  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/6,
              child: Image.asset("images/sign.png", fit: BoxFit.cover,),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height / 1.2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Labels(txt: "Welcome to Fashion Daily"),

                    MainTitle(lblTxt: "Register",),

                    Labels(txt: "Email", fntSize: 14,),
                    CustomFormField(
                      title: 'Eg. examgle@email.com',
                    ),
                    SizedBox(height: 10.0,),
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
                    SizedBox(height: 10.0,),
                    Labels(txt: "Password", fntSize: 14,),
                    CustomFormField(
                      title: 'Password',
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    SizedBox(height: 20.0,),
                    CustomButton(
                      btnTxt: "Register",
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
                      askTxt: 'Has any account?',
                      btnTxt: 'Sign in here',
                      onPress: () {
                        Navigator.pushReplacementNamed(
                            context, LoginPage.loginStringKey);
                      },
                      btnTxtColor: Colors.blue,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'By registering your account, you are agree to our',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 5,),
                          GestureDetector(
                            child: Text(
                              'terms and conditions',
                              style: TextStyle(color: Colors.blue),
                            ),
                            onTap: () {
                              print("Terms and conditions");
                            },
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
