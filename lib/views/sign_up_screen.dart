import 'package:banking/views/login_screen.dart';
import 'package:flutter/material.dart';

import '../repo/colors.dart';
import '../repo/widgets/button.dart';
import '../repo/widgets/text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final name = TextEditingController();
  final email = TextEditingController();
  final account = TextEditingController();
  final pass = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.25,
              width: width,
              decoration: BoxDecoration(
                  color: AppColors.mainColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/image2.png', height: height*0.1,width: width*0.2,),
                      Image.asset('assets/images/image4.jpg', height: height*0.1,width: width*0.2,),
                      Image.asset('assets/images/image3.png', height: height*0.1,width: width*0.2,),
                    ],
                  ),
                  SizedBox(height: height*0.01,),
                  Text('Connect to your bank account',style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.heading1),)
                ],
              ),
            ),
            Container(
              height: height*0.75,
              width: width,
              child: Column(
                children: [
                  SizedBox(height: height*0.05,),
                  TextFiledWidget(
                    controller: name,
                    obscure: false,
                    obscureChara: '1',
                    textHint: 'Your Name',
                    textInputType: TextInputType.text,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: height*0.02,),
                  TextFiledWidget(
                    controller: account,
                    obscure: false,
                    obscureChara: '1',
                    textHint: 'Account Number',
                    textInputType: TextInputType.number,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: height*0.02,),
                  TextFiledWidget(
                    controller: email,
                    obscure: false,
                    obscureChara: '1',
                    textHint: 'Email',
                    textInputType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: height*0.02,),
                  TextFiledWidget(
                    controller: pass,
                    obscure: true,
                    obscureChara: '*',
                    textHint: 'Password',
                    textInputType: TextInputType.text,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: height*0.06,),
                  Container(
                    width: width*0.8,
                    height: height*0.08,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                            checkColor: Colors.blue,
                            fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: Text("Buy signing up,you agree to Bank's Terms of Use & Privacy Policy",
                            maxLines: 2,
                            overflow: TextOverflow.visible,
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.borderColor,fontSize: 16),),
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                          btnWidth: width*0.3,
                          buttonTextColor: AppColors.textColor,
                          onTap: (){}, text: 'SIGN UP'),
                      Text("Or", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.borderColor,fontSize: 16),),
                      ButtonWidget(onTap: (){
                        Navigator.pop(context);
                      },
                          btnWidth: width*0.3,
                          color: AppColors.whiteButtonColor,
                          buttonSideColor: AppColors.buttonColor,
                          buttonTextColor: AppColors.buttonTextColor,
                          text: 'CANCEL')
                    ],
                  ),
                  SizedBox(height: height*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already signed up?',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.borderColor,fontSize: 17),),
                      SizedBox(width: width*0.01,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                          },
                          child: Text("Log in",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.textColor2, fontSize: 17),)),
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
