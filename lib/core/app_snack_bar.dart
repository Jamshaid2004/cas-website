

import 'bavel.dart';

class ApplicationSnackBar {
  static getSnackBar({required BuildContext context, required String text}) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(text),
      ),
    );
  }
}
