import 'package:cas_website/core/bavel.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({super.key});
  //......CONSTANTS
  static const crossAxisCount = 3;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
      ),
      itemCount: catalogProductsList.length,
      itemBuilder: (context, index) {
        return CatalogProductItemView(product: catalogProductsList[index]);
      },
    );
  }
}

class CatalogProductItemView extends StatelessWidget {
  const CatalogProductItemView({super.key, required this.product});
  final CatalogProduct product;
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: ApplicationColors.appBlackTextColor,
    );
    return Padding(
      padding: EdgeInsets.only(top: height * 0.05),
      child: Center(
        child: Container(
          width: width * 0.25,
          height: height * 0.7,
          decoration: BoxDecoration(
            color: ApplicationColors.coursesBackgroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: width * 0.15,
                    height: height * 0.15,
                    child: Image.asset(product.productImage),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    product.productName,
                    style: textStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                    child: StoreButtonsRow(
                  playStoreUrl: product.playStoreUrl,
                  appStoreUrl: product.appStoreUrl,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
