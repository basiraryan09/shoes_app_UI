import 'package:flutter/material.dart';
import 'package:shoes_app/resources/String/text_styles.dart';
import 'package:shoes_app/resources/colors/colors.dart';

class CustomCard extends StatelessWidget {
  final String Images;
  final String name;
  final String price;
  const CustomCard({Key? key, required this.Images, required this.name, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 185,
            height: 150,
            decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(image: AssetImage(Images),fit: BoxFit.fill,)
          ),
          Text(name, style: AppTextStyles.nameStyle,),
          Text(price, style: AppTextStyles.priceStyle,),
        ],
      ),
    );
  }
}
