import 'package:flutter/material.dart';
import 'package:login_register/screens/loginPage.dart';
import 'package:login_register/screens/registerPage.dart';
import 'package:login_register/shared/accountQuestion.dart';
import 'package:login_register/shared/customButton.dart';
import 'package:login_register/shared/switchContent.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _index = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, LoginPage.loginStringKey);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Colors.black54),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange[50],
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
              RichText(
                text: TextSpan(
                  text: '7',
                  style: TextStyle(
                      color: Colors.deepOrange[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Krave', style: TextStyle(color: Colors.teal)),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.6,
                child: PageView(
                  controller: _pageController,
                  children: [
                    SwithContent(
                      image: 'images/1.svg',
                      title: [
                        "Get Food Delivary to your",
                        "doorstep asap",
                      ],
                      desc: [
                        "We have young and professional delivary",
                        "team that will bring your food as soon as",
                        "possible to your doorstep",
                      ],
                      stepImage: 'images/step.svg',
                    ),
                    SwithContent(
                      image: 'images/2.svg',
                      title: [
                        'Buy Any Food from your',
                        'favourite restaurant',
                      ],
                      desc: [
                        'We are constantly adding your favourite',
                        'restaurant throughout territory and around',
                        'your area carefully selected',
                      ],
                      stepImage: 'images/step1.svg',
                    ),
                    SwithContent(
                      image: 'images/3.svg',
                      title: [
                        "Get Food Delivary to your",
                        "doorstep asap",
                      ],
                      desc: [
                        "We have young and professional delivary",
                        "team that will bring your food as soon as",
                        "possible to your doorstep",
                      ],
                      stepImage: 'images/step2.svg',
                    ),
                    SwithContent(
                      image: 'images/4.svg',
                      title: [
                        'Buy Any Food from your',
                        'favourite restaurant',
                      ],
                      desc: [
                        'We are constantly adding your favourite',
                        'restaurant throughout territory and around',
                        'your area carefully selected',
                      ],
                      stepImage: 'images/step3.svg',
                    ),
                  ],
                  onPageChanged: (index) {
                    _index = index;
                    print(_index);
                  },
                ),
              ),
              CustomButton(
                btnTxt: "Get Started",
                onPress: () {
                  Navigator.pushReplacementNamed(
                      context, LoginPage.loginStringKey);
                },
                btnClr: Colors.teal[300],
              ),
              AccountQuestion(
                askTxt: 'Don\'t have an account?',
                btnTxt: 'Sign Up',
                onPress: () {
                  Navigator.pushReplacementNamed(
                      context, RegisterPage.loginStringKey);
                },
                btnTxtColor: Colors.teal[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
