import 'package:cas_website/core/app_button.dart';
import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/core/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageContactContent extends StatefulWidget {
  const HomePageContactContent({super.key});

  @override
  State<HomePageContactContent> createState() => _HomePageContactContentState();
}

class _HomePageContactContentState extends State<HomePageContactContent> {
  late TextEditingController firstnameController;
  late TextEditingController lastnameController;
  late TextEditingController emailAddressController;
  late TextEditingController phoneNumberController;
  late TextEditingController messageBoxController;

  @override
  void initState() {
    super.initState();
    firstnameController = TextEditingController();
    lastnameController = TextEditingController();
    emailAddressController = TextEditingController();
    phoneNumberController = TextEditingController();
    messageBoxController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HomePageContactTitleText(),
            const HomePageContactSubTitleText(),
            HomePageContactNameInputFieldRow(
              firstnameController: firstnameController,
              lastnameController: lastnameController,
            ),
            HomePageContactInfoInputFieldRow(
              emailController: emailAddressController,
              contactController: phoneNumberController,
            ),
            HomePageContactMessageInputBox(
                messageBoxController: messageBoxController),
            const HomePageContactUsButton(),
          ],
        ),
      ),
    );
  }
}

class HomePageContactTitleText extends StatelessWidget {
  const HomePageContactTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.02,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.01, top: width * 0.1),
      child: Text(
        'Get In Touch With Us',
        style: textStyle,
      ),
    );
  }
}

class HomePageContactSubTitleText extends StatelessWidget {
  const HomePageContactSubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.01,
      color: ApplicationColors.lightBlueThemeColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.03),
      child: Text(
        "Choose what's best for you",
        style: textStyle,
      ),
    );
  }
}

class HomePageContactNameInputFieldRow extends StatelessWidget {
  const HomePageContactNameInputFieldRow(
      {super.key,
      required this.firstnameController,
      required this.lastnameController});
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.all(width * 0.005),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: width * 0.2,
              height: width * 0.05,
              child: AppTextField(
                textController: firstnameController,
                labelText: 'First Name',
                suffixIcon: Icons.person,
              )),
          SizedBox(width: width * 0.05),
          SizedBox(
              width: width * 0.2,
              height: width * 0.05,
              child: AppTextField(
                textController: lastnameController,
                labelText: 'Last Name',
                suffixIcon: Icons.person,
              )),
        ],
      ),
    );
  }
}

class HomePageContactInfoInputFieldRow extends StatelessWidget {
  const HomePageContactInfoInputFieldRow(
      {super.key,
      required this.emailController,
      required this.contactController});
  final TextEditingController emailController;
  final TextEditingController contactController;
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.all(width * 0.005),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.2,
            height: width * 0.05,
            child: AppTextField(
              textController: emailController,
              labelText: 'Email Text',
              suffixIcon: Icons.email,
            ),
          ),
          SizedBox(width: width * 0.05),
          SizedBox(
            width: width * 0.2,
            height: width * 0.05,
            child: AppTextField(
              textController: contactController,
              labelText: 'Phone Number',
              suffixIcon: Icons.call,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageContactMessageInputBox extends StatelessWidget {
  const HomePageContactMessageInputBox(
      {super.key, required this.messageBoxController});
  final TextEditingController messageBoxController;
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.all(width * 0.005),
      child: SizedBox(
        width: width * 0.45,
        child: AppTextField(
          textController: messageBoxController,
          hintText: 'Enter Details...',
          maxLines: 3,
        ),
      ),
    );
  }
}

class HomePageContactUsButton extends StatelessWidget {
  const HomePageContactUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.all(width * 0.05),
      child: AppButton(
        onTap: () {},
        buttonText: 'Contact us',
        textSize: width * 0.01,
      ),
    );
  }
}
