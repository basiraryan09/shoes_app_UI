import 'package:flutter/material.dart';
import 'package:shoes_app/resources/String/text_styles.dart';
import 'package:shoes_app/resources/colors/colors.dart';
import '../resources/widgets/CustomCard/custom_card.dart';
import '../resources/widgets/CustomContainer/custom_container.dart';
import '../resources/widgets/appBar/app_bar.dart';
import '../resources/widgets/buttons/buttons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List prices =[
    "USD 58\$",
    "USD 120\$",
    "USD 78\$",
    "USD 60\$",
  ];
  List name =[
    "Real Men's Shoes",
    "Lovely Red Shoes",
    "Pink Women's Shoes",
    "Blue Men's Shoes"
  ];
  List images =[
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Happy shopping',
                  style: AppTextStyles.headline,
                ),
              ),
              Center(
                child: Text(
                  'Discount 50% OFF',
                  style: AppTextStyles.bodyStyle,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomContainer(),
              const SizedBox(
                height: 20,
              ),
              const Center(child: CustomButton(btnText: 'Order Now')),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                   // style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(text: 'Best ',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                          decoration: TextDecoration.none)),
                      TextSpan(
                        text: 'Collection',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainColor,
                        ),
                      ),
                      //TextSpan(text: '!'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                  height: 600,
                  width: double.infinity,
                  child:
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  childAspectRatio: .8,
                ),
                itemCount: 4, // Total number of grid cells
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child:
                      CustomCard(
                        Images: images[index],
                        name: name[index],
                        price: prices[index],),
                    ),
                  ],
                  );
                },
              )),
              //SizedBox(height: 200,)

            ],
          ),
        ),
      ),
    );
  }
}
