import 'package:flutter/material.dart';
import 'package:sahil_test/utils/fonts_constants.dart';

class AvailableTypesWidget extends StatelessWidget {
   AvailableTypesWidget({required this.title,required this.image,required this.bgColor,super.key});

   String image,title;
   Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 58,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor,
          ),
          width: 58,

          child: Image.asset(image,height: 26,width: 26,),
        ),
        SizedBox(height: 12,),
        Text(title,
        style: TextStyle(
          fontSize: 14,
          fontFamily: FontsConstants.Poppins_Black,
          fontWeight: FontWeight.w500,
          color: Color(0xFF41405D)
        ),),


      ],
    );
  }
}



