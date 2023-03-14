import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Widgets/container_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              'LOGIN IN',
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
                    Row(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1567784177951-6fa58317e16b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60 ',
                            width: 50,
                            fit: BoxFit.cover,
                            height: 50,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hosni Cr',
                            style: TextStyle(
                                color: Color(0xfff02c38e),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Hosni_cr@gmail.com',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ]),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          suffix: const Text(
                            'View',
                            style: TextStyle(color: Colors.black),
                          ),
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 2, color: Color(0xfff02c38e))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ContainerButton(
                      text: ' Continue',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                          color: Color(0xfff02c38e),
                          fontWeight: FontWeight.w700),
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
