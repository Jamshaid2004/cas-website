import 'bavel.dart';

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
      highlightColor: ApplicationColors.transparentColor,
      hoverColor: ApplicationColors.transparentColor,
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
