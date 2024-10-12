import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      required this.textSize});
  final void Function() onTap;
  final String buttonText;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: FittedBox(
        child: DecoratedBox(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(80)),
              gradient: LinearGradient(colors: [
                ApplicationColors.darkBlueThemeColor,
                ApplicationColors.lightBlueThemeColor
              ])),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                buttonText,
                style: GoogleFonts.quicksand(
                    fontSize: textSize,
                    fontWeight: FontWeight.bold,
                    color: ApplicationColors.appWhiteTextColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
