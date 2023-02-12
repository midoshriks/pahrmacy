import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pharmacy/core/constant/color.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('login'),
          backgroundColor: AppColor.twoColor,
        ),
        body: Container(
          // color: AppColor.primaryColor,
          alignment: Alignment.center,
          child: const Text(
            'page',
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
