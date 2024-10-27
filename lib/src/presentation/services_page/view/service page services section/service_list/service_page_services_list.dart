import 'dart:developer';

import 'package:cas_website/core/bavel.dart';
import 'package:cas_website/core/services_product.dart';
import 'package:cas_website/src/presentation/services_page/model/service_product_model.dart';
import 'package:cas_website/src/presentation/services_page/view/service%20page%20services%20section/service_list/card_front_side.dart';
import 'package:cas_website/src/presentation/services_page/view/service%20page%20services%20section/service_list/features_back_card.dart';
import 'package:cas_website/src/presentation/services_page/view/service%20page%20services%20section/service_list/pricing_back_side.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';

class ServicePageCoursesListWidget extends StatefulWidget {
  const ServicePageCoursesListWidget({super.key});
  static const crossAxisCount = 3;

  @override
  State<ServicePageCoursesListWidget> createState() =>
      _ServicePageCoursesListWidgetState();
}

class _ServicePageCoursesListWidgetState
    extends State<ServicePageCoursesListWidget> {
  late List<FlipCardController> _controller;
  String _currentBackSide = 'features';

  @override
  void initState() {
    super.initState();
    _controller =
        List.generate(serviceProductsList.length, (_) => FlipCardController());
    // secondController = FlipController();
  }

  void _showFeaturesSide() {
    setState(() {
      _currentBackSide = 'features';
    });
  }

  void _showPricingSide() {
    setState(() {
      _currentBackSide = 'pricing';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: ServicePageCoursesListWidget.crossAxisCount),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: serviceProductsList.length,
      itemBuilder: (context, index) {
        log("index $index");
        return ServicePageCourseItemView(
          currentBackSide: _currentBackSide,
          showFeatures: _showFeaturesSide,
          showPricing: _showPricingSide,
          controller: _controller[index],
          serviceProduct: serviceProductsList[index],
        );
      },
    );
  }
}

class ServicePageCourseItemView extends StatelessWidget {
  final ServiceProduct serviceProduct;
  final FlipCardController controller;
  final VoidCallback showFeatures;
  final VoidCallback showPricing;
  final String currentBackSide;
  const ServicePageCourseItemView(
      {super.key,
      required this.serviceProduct,
      required this.controller,
      required this.currentBackSide,
      required this.showFeatures,
      required this.showPricing});

  void onAppFeatureButtonPressed() {
    showFeatures();
    controller.toggleCard();
  }

  void onPricingTierButtonPressed() {
    showPricing();
    controller.toggleCard();
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.015,
      fontWeight: FontWeight.bold,
      color: ApplicationColors.appBlackTextColor,
    );
    final buttonTextStyle =
        TextStyle(color: Colors.white, fontSize: width * 0.009);
    return Padding(
      padding: EdgeInsets.only(top: height * 0.05),
      child: Center(
        child: FlipCard(
          controller: controller,
          front: ServiceFrontCardSide(
              onAppFeatureButtonPressed: onAppFeatureButtonPressed,
              onPricingTierButtonPressed: onPricingTierButtonPressed,
              flipCardController: controller,
              serviceProduct: serviceProduct,
              textStyle: textStyle,
              buttonTextStyle: buttonTextStyle),
          back: currentBackSide == 'features'
              ? FeaturesBackCardSide(
                  controller: controller,
                  serviceProduct: serviceProduct,
                  textStyle: textStyle,
                  buttonTextStyle: buttonTextStyle,
                )
              : PricingBackSideCard(
                  controller: controller,
                  serviceProduct: serviceProduct,
                  textStyle: textStyle,
                  buttonTextStyle: buttonTextStyle,
                ),
        ),
      ),
    );
  }
}
