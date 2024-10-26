import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/core/app_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class StoreButtonsRow extends StatelessWidget {
  const StoreButtonsRow(
      {super.key, required this.playStoreUrl, this.appStoreUrl});
  final String? playStoreUrl, appStoreUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Center(
                child: PlayAndAppStoreButton(
          storeName: 'Play Store',
          url: playStoreUrl!,
          storeImage: 'assets/images/play_store_icon.png',
        ))),
        appStoreUrl == null
            ? const SizedBox()
            : Expanded(
                child: Center(
                    child: PlayAndAppStoreButton(
                storeImage: 'assets/images/app_store_icon.png',
                storeName: 'App Store',
                url: appStoreUrl!,
              ))),
      ],
    );
  }
}

class PlayAndAppStoreButton extends StatelessWidget {
  const PlayAndAppStoreButton(
      {super.key,
      required this.storeName,
      required this.url,
      required this.storeImage});
  final String storeName, url, storeImage;
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return InkWell(
      focusColor: ApplicationColors.transparentColor,
      hoverColor: ApplicationColors.transparentColor,
      splashColor: ApplicationColors.transparentColor,
      onTap: () => _launchUrl(context),
      child: Container(
        width: width * 0.085,
        height: height * 0.05,
        decoration: BoxDecoration(
          color: ApplicationColors.transparentColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black,
            width: 0.0,
          ),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Center(
                  child: SizedBox(
                    width: width * 0.02,
                    height: height * 0.04,
                    child: Image.asset(
                      storeImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Text(
                storeName,
                style: const TextStyle(
                  color: ApplicationColors.appBlackTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchUrl(BuildContext context) async {
    if (!await launchUrlString(url)) {
      ApplicationSnackBar.getSnackBar(
          context: context, text: 'Could not launch url');
    }
  }
}
