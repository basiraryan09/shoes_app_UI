import 'package:flutter/material.dart';
import 'package:shoes_app/resources/String/text_styles.dart';
import 'package:shoes_app/resources/colors/colors.dart';

class CustomButton extends StatelessWidget {

  final String btnText;
  const CustomButton({Key? key, required this.btnText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(child: Text(btnText, style: AppTextStyles.btnStyle,)),
    );
  }
}
