import 'package:banking/repo/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key, required this.onTap,required this.text,required this.btnWidth, this.color = AppColors.buttonColor, this.buttonSideColor = AppColors.buttonColor, this.buttonTextColor = AppColors.buttonTextColor});

  String text;
  final VoidCallback onTap;
  double btnWidth;
  Color color;
  Color buttonSideColor;
  Color buttonTextColor;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Container(
      width: btnWidth,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => color),
            elevation: MaterialStateProperty.all(10),
          // padding: MaterialStateProperty.all( EdgeInsets.all(7)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: BorderSide(color: buttonSideColor,width: 2)))
          ),
          child: Text(text,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: buttonTextColor),textAlign: TextAlign.center),
      ),
    );
  }
}
