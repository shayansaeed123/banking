import 'package:banking/repo/colors.dart';
import 'package:banking/repo/widgets/button.dart';
import 'package:banking/repo/widgets/text_field.dart';
import 'package:banking/views/account_screen.dart';
import 'package:banking/views/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../repo/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.55,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.mainColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.08,),
                  Text("WELCOME!", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.heading1,fontSize: 30),),
                  SizedBox(height: height * 0.02,),
                  Image(image: AssetImage('assets/images/image2.png'),width: width * 0.5,height: height*0.35),
                ],
              ),
            ),
            Container(
              height: height * 0.45,
              width: width,
              child: Column(
                children: [
                  SizedBox(height: height*0.05,),
                  TextFiledWidget(
                      controller: email,
                    obscure: false,
                    obscureChara: '1',
                    textHint: 'Username or Email',
                    textInputType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height*0.02,),
                  TextFiledWidget(
                    controller: pass,
                    obscure: true,
                    obscureChara: '*',
                    textHint: 'Password',
                    textInputType: TextInputType.text,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height*0.02,),
                  ButtonWidget(
                      btnWidth: width*0.3,
                      buttonTextColor: AppColors.textColor,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen(),));
                      }, text: 'LOG IN'),
                  SizedBox(height: height*0.05,),
                  Text("Forgot password?",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.textColor2,
                      fontSize: 17),
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to Bank Apps',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.borderColor,fontSize: 17),),
                      SizedBox(width: width*0.02,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                          },
                          child: Text("Sign Up",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.textColor2, fontSize: 17),)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
