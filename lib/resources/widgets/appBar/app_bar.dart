import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Image(image: AssetImage('assets/'))
            Icon(Icons.menu_outlined),
            CircleAvatar(
              backgroundImage: AssetImage('assets/Avatar.png'),
            )
          ],
        ),
      ),
    );
  }
}
