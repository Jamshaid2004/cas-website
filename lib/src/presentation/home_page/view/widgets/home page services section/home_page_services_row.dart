import 'package:cas_website/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageServicesRow extends StatelessWidget {
  const HomePageServicesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ServiceWidget(
            serviceText: 'Mobile Apps',
            serviceImage: 'assets/images/service_mobile_dev.png'),
        ServiceWidget(
            serviceText: 'Web Apps',
            serviceImage: 'assets/images/service_web_dev.png'),
        ServiceWidget(
            serviceText: 'Cross Platform',
            serviceImage: 'assets/images/service_cross_platform.png'),
        ServiceWidget(
            serviceText: 'Devops',
            serviceImage: 'assets/images/service_mobile_dev.png'),
      ],
    );
  }
}

class ServiceWidget extends StatelessWidget {
  final String serviceText;
  final String serviceImage;
  const ServiceWidget(
      {super.key, required this.serviceText, required this.serviceImage});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.01,
      color: ApplicationColors.appGreyTextColor,
      fontWeight: FontWeight.bold,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            serviceImage,
            height: width * 0.08,
          ),
          SizedBox(
            height: width * 0.03,
          ),
          Text(
            serviceText,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
