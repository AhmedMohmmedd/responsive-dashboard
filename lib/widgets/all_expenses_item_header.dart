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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: backGroundColor ?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(image ,
                  colorFilter: ColorFilter.mode(iconColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
       const Spacer(),
        Transform.rotate(
              angle: -1.571 *2,
              child:  Icon(
                Icons.arrow_back_ios_new_outlined,
                color: iconColor == null ? const Color(0xFF064060) : Colors.white,
              )),
      ],
    );
  }
}
