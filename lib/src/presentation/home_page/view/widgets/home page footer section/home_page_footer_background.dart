import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';

class HomePageFooterBackground extends StatelessWidget {
  const HomePageFooterBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(top: width * 0.025),
          child: Image.asset('assets/images/rectangle_last_bg.png'),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.5),
                  boxShadow: const [
                    BoxShadow(
                        color: ApplicationColors.appGreyTextColor,
                        blurRadius: 6),
                  ],
                  color: ApplicationColors.appWhiteTextColor),
              child: SizedBox(
                width: width * 0.1,
                height: width * 0.1,
              ),
            ),
            Image.asset(
              'assets/images/cas_logo_two.png',
              width: width * 0.07,
              height: width * 0.07,
            ),
          ],
        ),
      ],
    );
  }
}
