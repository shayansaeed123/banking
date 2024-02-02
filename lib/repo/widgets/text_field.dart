import 'package:banking/repo/colors.dart';
import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  TextFiledWidget({super.key,
    required this.controller,
    required this.textHint,
    required this.textAlign,
    required this.textInputType,
    required this.obscureChara,
    required this.obscure,
    this.border =10,
  });
  TextEditingController controller = TextEditingController();
  TextInputType textInputType = TextInputType.none;
  bool obscure = true;
  String obscureChara = '';
  String textHint = '';
  TextAlign textAlign;
  double border;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Container(
      width: width * 0.8,
      child: TextFormField(
        controller: controller,
        textAlign: textAlign,
        keyboardType: textInputType,
        obscureText: obscure,
        obscuringCharacter: obscureChara,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(border),borderSide: BorderSide(width: 2)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(border),borderSide: BorderSide(color: AppColors.borderColor,width: 2)),
          hintText: textHint,
          contentPadding: EdgeInsets.only(left: width*0.02,top: height*0.0),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(border),borderSide: BorderSide(color: AppColors.enableBorder,width: 2)),
        ),
      ),
    );
  }
}
