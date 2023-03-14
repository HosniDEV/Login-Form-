import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Widgets/container_button.dart';

class HiPage extends StatelessWidget {
  const HiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 350,
            width: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1622427667495-c708572663de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 300,
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.9),
                ],
                    stops: [
                  0.0,
                  1.0
                ])),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 150,
            ),
            Text(
              'Hi!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ContainerButton(
                      text: 'Continue',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Or',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _Container(
                        image:
                            'https://www.svgrepo.com/show/303114/facebook-3-logo.svg',
                        title: 'Continue with Facebook'),
                    SizedBox(
                      height: 15,
                    ),
                    _Container(
                        image:
                            'https://www.svgrepo.com/show/475656/google-color.svg',
                        title: 'Continue with Google'),
                    SizedBox(
                      height: 15,
                    ),
                    _Container(
                        image: 'https://www.svgrepo.com/show/353414/apple.svg',
                        title: 'Continue with Apple'),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Don\'t you have an account ?',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Sign in',
                          style: TextStyle(
                              color: Color(0xfff02c38e),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Forgot Password ',
                      style: TextStyle(
                          color: Color(0xfff02c38e),
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
            ),
          ]),
        ),
      ]),
    );
  }
}

class _Container extends StatelessWidget {
  const _Container({
    super.key,
    this.image,
    this.title,
  });
  final String? title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.all(10),
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            SvgPicture.network(
              '$image',
              width: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              '$title',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ));
  }
}
