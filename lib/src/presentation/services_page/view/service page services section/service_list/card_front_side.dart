import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/src/presentation/services_page/model/service_product_model.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class ServiceFrontCardSide extends StatelessWidget {
  final ServiceProduct serviceProduct;
  final TextStyle textStyle;
  final TextStyle buttonTextStyle;
  final FlipCardController flipCardController;
  final VoidCallback onAppFeatureButtonPressed;
  final VoidCallback onPricingTierButtonPressed;
  const ServiceFrontCardSide(
      {super.key,
      required this.serviceProduct,
      required this.textStyle,
      required this.buttonTextStyle,
      required this.flipCardController,
      required this.onAppFeatureButtonPressed,
      required this.onPricingTierButtonPressed});

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
                child: Image.asset(serviceProduct.serviceImage),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Center(
              child: Text(
                serviceProduct.serviceName,
                style: textStyle,
              ),
            ),
          ),
          Expanded(
            flex: 20,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.01,
                ),
                child: Text(
                  serviceProduct.serviceDescription,
                  style: TextStyle(
                      color: ApplicationColors.appBlackTextColor,
                      fontSize: width * 0.011),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 10,
              child: Text(
                "Timeline",
                style: textStyle,
              )),
          Expanded(
              flex: 10,
              child: Text(
                serviceProduct.estimatedTimeline,
                style: TextStyle(
                    color: ApplicationColors.appBlackTextColor,
                    fontSize: width * 0.011),
              )),
          Expanded(
            flex: 15,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: onAppFeatureButtonPressed,
                      child: Text(
                        "App Features",
                        style: buttonTextStyle,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 4,
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: onPricingTierButtonPressed,
                      child: Text(
                        "Tier pricing",
                        style: buttonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
