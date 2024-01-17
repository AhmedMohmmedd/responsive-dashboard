import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.backGroundColor, this.iconColor});
final String image;
final Color? backGroundColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding:const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: backGroundColor ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(image ,
          colorFilter: ColorFilter.mode(iconColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
       const Spacer(),
        Transform.rotate(
              angle: -1.571 *2,
              child:  Icon(
                Icons.arrow_back_ios_new_outlined,
                color: iconColor == null ? Color(0xFF064060) : Colors.white,
              )),
      ],
    );
  }
}
