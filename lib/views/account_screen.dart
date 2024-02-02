import 'package:banking/repo/widgets/button.dart';
import 'package:banking/repo/widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../repo/colors.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final name = TextEditingController();
  final account = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: (){

            },
            child: Icon(Icons.settings),
          ),
          SizedBox(width:width*0.03,),
        ],
      ),
      drawer: Drawer(),
      body: Container(
        width: width,
        height: height*0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height*0.02,),
            Icon(Icons.person_pin,color: AppColors.iconColor2,size: 150,),
            SizedBox(height: height*0.04,),
            Container(
              height: height*0.04,
              child: TextFiledWidget(
                controller: name,
                textHint: 'YOUR NAME',
                textAlign: TextAlign.start,
                textInputType: TextInputType.text,
                obscureChara: '*',
                obscure: false,
                border: 4,
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.04,
              child: TextFiledWidget(
                controller: account,
                textHint: 'BANK ACCOUNT',
                textAlign: TextAlign.start,
                textInputType: TextInputType.text,
                obscureChara: '*',
                obscure: false,
                border: 4,
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.04,
              child: TextFiledWidget(
                controller: email,
                textHint: 'EMAIL',
                textAlign: TextAlign.start,
                textInputType: TextInputType.text,
                obscureChara: '*',
                obscure: false,
                border: 4,
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.04,
              child: TextFiledWidget(
                controller: password,
                textHint: 'PASSWORD',
                textAlign: TextAlign.start,
                textInputType: TextInputType.text,
                obscureChara: '*',
                obscure: false,
                border: 4,
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.04,
              child: TextFiledWidget(
                controller: phone,
                textHint: 'PHONE NUMBER',
                textAlign: TextAlign.start,
                textInputType: TextInputType.text,
                obscureChara: '*',
                obscure: false,
                border: 4,
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
            width: width * 0.8,
            child: TextFormField(
            controller: address,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.text,
            maxLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(4),borderSide: BorderSide(width: 2)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: AppColors.borderColor,width: 2)),
              hintText: 'YOUR ADDRESS',
              contentPadding: EdgeInsets.only(left: width*0.02,top: height*0.02),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: AppColors.enableBorder,width: 2)),
            ),
          ),
        ),
            SizedBox(height: height*0.05,),
            ButtonWidget(
              onTap: (){},
              text: 'SAVE CHANGES',
              buttonTextColor: AppColors.buttonTextColor,
              btnWidth: width*0.6,
            )
          ],
        ),
      ),
    );
  }
}
