import 'package:banking/repo/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key, required this.onTap,required this.text});

  String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Container(
      width: width*0.3,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => AppColors.buttonColor),
            elevation: MaterialStateProperty.all(10),
          // padding: MaterialStateProperty.all( EdgeInsets.all(7)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
          ),
          child: Text(text,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.textColor),textAlign: TextAlign.center),
      ),
    );
  }
}
