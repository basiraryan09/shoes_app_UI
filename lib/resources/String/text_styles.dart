import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_app/resources/colors/colors.dart';


class AppTextStyles {

   static TextStyle headline = TextStyle(
    fontSize: 27,
    letterSpacing: .6,
    fontWeight: FontWeight.w600,
    color: AppColors.mainColor,
  );

   static TextStyle btnStyle = GoogleFonts.roboto(
     fontSize: 27,
     fontWeight: FontWeight.w600,
     color: AppColors.whiteColor,
   );

  static  TextStyle bodyStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.secondaryColor,
  );

   static  TextStyle nameStyle = TextStyle(
     fontSize: 14,
     fontWeight: FontWeight.w600,
     color: AppColors.containerColor,
   );

   static  TextStyle priceStyle = TextStyle(
     fontSize: 14,
     fontWeight: FontWeight.w600,
     color: AppColors.mainColor,
   );

}
