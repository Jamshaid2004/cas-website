import 'bavel.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.textController,
      this.labelText,
      this.hintText,
      this.maxLines = 1,
      this.suffixIcon});
  final TextEditingController textController;
  final String? labelText;
  final String? hintText;
  final int maxLines;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    Widget? label = (labelText != null && labelText != '')
        ? Text(
            labelText!,
            style: GoogleFonts.quicksand(
                color: ApplicationColors.appGreyTextColor,
                fontWeight: FontWeight.w500),
          )
        : null;
    return TextFormField(
      controller: textController,
      maxLines: maxLines,
      decoration: InputDecoration(
        label: label,
        hintText: hintText,
        hintStyle: GoogleFonts.quicksand(
            color: ApplicationColors.appGreyTextColor,
            fontWeight: FontWeight.w500),
        suffixIcon: Icon(suffixIcon),
        fillColor: ApplicationColors.appWhiteTextColor,
        filled: true,
        hoverColor: ApplicationColors.appWhiteTextColor,
        border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ApplicationColors.lightBlueThemeColor,
            ),
            borderRadius: BorderRadius.all(Radius.zero)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ApplicationColors.lightBlueThemeColor,
            ),
            borderRadius: BorderRadius.all(Radius.zero)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ApplicationColors.lightBlueThemeColor,
            ),
            borderRadius: BorderRadius.all(Radius.zero)),
      ),
      cursorColor: ApplicationColors.appBlackTextColor,
    );
  }
}
