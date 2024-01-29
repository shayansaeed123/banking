import 'package:banking/repo/colors.dart';
import 'package:flutter/material.dart';

import '../repo/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.mainColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.08,),
                  Text("WELCOME!", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.heading1,fontSize: 30),),
                  SizedBox(height: height * 0.03,),
                  Image(image: AssetImage('assets/images/image2.png'),width: width * 0.45,height: height*0.3),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
