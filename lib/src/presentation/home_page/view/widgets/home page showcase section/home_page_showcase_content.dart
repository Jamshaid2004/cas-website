import 'package:cas_website/core/app_button.dart';
import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/src/presentation/catalog_page/view/catalog_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageShowcaseContent extends StatelessWidget {
  const HomePageShowcaseContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomePageShowcaseTitleText(),
          HomePageShowcaseProjectRow(),
          HomePageShowcasePreviousProjectsButton(),
        ],
      ),
    );
  }
}

class HomePageShowcaseTitleText extends StatelessWidget {
  const HomePageShowcaseTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.02,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.05, top: width * 0.1),
      child: Text('Showcase of Excellence', style: textStyle),
    );
  }
}

class HomePageShowcaseProjectRow extends StatelessWidget {
  const HomePageShowcaseProjectRow({super.key});
  final String liveDocTeleMedicineDescrition =
      'Tele Medicine is a health care app where you can book your doctor appointments and do check up online, lab tests, and online doctor video consultations.';
  final String elmsDescrition =
      'The E-Learning Management System (ELMS) with face recognition technology offers a secure and personalized learning experience.';
  final String smartTableDescrition =
      'A smart restaurant table lets customers browse the menu, customize dishes, play games, and place orders directly, enhancing convenience and dining experience.';
  final String invitorDescrition =
      'The Invitor app lets users create and customize invitations for events like weddings, birthdays, and baby showers with personalized themes and text.';
  final String carWashDescrition =
      'The car wash app offers a convenient way to book car cleaning services. Users can schedule washes, choose service packages, and track their booking status in real-time.';
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HomePageShowcaseProject(
            widthPar: width * 0.13,
            image: 'assets/images/mobile_dev.png',
            title: 'Live Doc Tele Medicine',
            description: liveDocTeleMedicineDescrition),
        HomePageShowcaseProject(
            widthPar: width * 0.15,
            image: 'assets/images/mobile_dev.png',
            title: 'ELMS',
            description: elmsDescrition),
        HomePageShowcaseProject(
            widthPar: width * 0.17,
            image: 'assets/images/mobile_dev.png',
            title: 'Smart Table',
            description: smartTableDescrition),
        HomePageShowcaseProject(
            widthPar: width * 0.15,
            image: 'assets/images/mobile_dev.png',
            title: 'Invitor App',
            description: invitorDescrition),
        HomePageShowcaseProject(
            widthPar: width * 0.13,
            image: 'assets/images/mobile_dev.png',
            title: 'Car Wash App',
            description: carWashDescrition),
      ],
    );
  }
}

class HomePageShowcaseProject extends StatelessWidget {
  const HomePageShowcaseProject(
      {super.key,
      required this.widthPar,
      required this.image,
      required this.title,
      required this.description});
  final double widthPar;
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyleTitle = GoogleFonts.quicksand(
      fontSize: width * 0.01,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    final textStyleDescription = GoogleFonts.quicksand(
      fontSize: width * 0.006,
      color: ApplicationColors.appBlackTextColor,
      fontWeight: FontWeight.bold,
    );
    return Container(
      height: widthPar * 1.5,
      width: widthPar,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ApplicationColors.appWhiteTextColor,
            ApplicationColors.appGreyTextColor,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: widthPar * 0.1),
            child: Image.asset(
              image,
              height: widthPar * 0.4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: FittedBox(child: Text(title, style: textStyleTitle)),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(description, style: textStyleDescription),
          ),
        ],
      ),
    );
  }
}

class HomePageShowcasePreviousProjectsButton extends StatelessWidget {
  const HomePageShowcasePreviousProjectsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(top: width * 0.03, bottom: width * 0.03),
      child: AppButton(
          onTap: () => context.go('/${CatalogPage.pageAddress}'),
          buttonText: 'Visit Recent Work',
          textSize: 15),
    );
  }
}
