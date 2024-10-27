import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/src/presentation/services_page/model/service_product_model.dart';
import 'package:cas_website/utils/service_utils/service_meta_data.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class FeaturesBackCardSide extends StatelessWidget {
  final TextStyle textStyle;
  final TextStyle buttonTextStyle;
  final ServiceProduct serviceProduct;
  final FlipCardController controller;
  const FeaturesBackCardSide(
      {super.key,
      required this.textStyle,
      required this.buttonTextStyle,
      required this.serviceProduct,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Container(
      width: width * 0.25,
      height: height * 0.7,
      decoration: BoxDecoration(
        color: ApplicationColors.coursesBackgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 20,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: width * 0.15,
                height: height * 0.15,
                child: Image.asset(appFeaturesIcon),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Center(
              child: Text(
                "App Features",
                style: textStyle,
              ),
            ),
          ),
          Expanded(
            flex: 55,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.01,
                ),
                child: Text(
                  serviceProduct.keyFeatures,
                  style: TextStyle(
                      color: ApplicationColors.appBlackTextColor,
                      fontSize: width * 0.011),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Center(
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () => {controller.toggleCard()},
                child: Text(
                  "Back",
                  style: buttonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
