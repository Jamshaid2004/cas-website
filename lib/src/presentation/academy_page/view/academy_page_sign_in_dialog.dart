import 'package:cas_website/core/bavel.dart';

WidgetBuilder signInDialog = (context) {
  var Size(:width, :height) = MediaQuery.sizeOf(context);
  return Dialog(
    alignment: Alignment.center,
    child: Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome! Please Select your role to continue:',
              style: GoogleFonts.quicksand(
                  fontSize: width * 0.01, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton(
                      onTap: () {
                        signInInputDialog('Admin', context);
                      },
                      buttonText: " 👨‍💼 Admin ",
                      textSize: width * 0.01),
                  SizedBox(width: width * 0.02),
                  AppButton(
                      onTap: () {
                        signInInputDialog('Student', context);
                      },
                      buttonText: "👨‍🎓 Student",
                      textSize: width * 0.01),
                ],
              ),
            ),
          ],
        )),
  );
};

signInInputDialog(String signinas, BuildContext context) {
  if (signinas == 'Admin') {
    showDialog(context: context, builder: signInAsAdminDialog);
  } else {
    showDialog(context: context, builder: signInAsStudentDialog);
  }
}

WidgetBuilder signInAsStudentDialog = (context) {
  var Size(:width, :height) = MediaQuery.sizeOf(context);
  TextEditingController studentEmailController = TextEditingController();
  TextEditingController studentPasswordController = TextEditingController();
  TextEditingController studentIdController = TextEditingController();
  return Dialog(
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.all(width * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Enter Your Student Id, Email and Password',
            style: GoogleFonts.quicksand(
                fontSize: width * 0.01, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: width * 0.3,
            child: Padding(
              padding: EdgeInsets.only(bottom: width * 0.01, top: width * 0.01),
              child: AppTextField(
                textController: studentIdController,
                labelText: 'Student Id',
                suffixIcon: Icons.person,
              ),
            ),
          ),
          SizedBox(
            width: width * 0.3,
            child: Padding(
              padding: EdgeInsets.only(bottom: width * 0.01),
              child: AppTextField(
                textController: studentEmailController,
                labelText: 'Email',
                suffixIcon: Icons.email,
              ),
            ),
          ),
          SizedBox(
            width: width * 0.3,
            child: Padding(
              padding: EdgeInsets.only(bottom: width * 0.01),
              child: AppTextField(
                textController: studentPasswordController,
                labelText: 'Password',
                suffixIcon: Icons.lock,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppButton(
                    onTap: () {
                      // String studentEmailText = studentEmailController.text;
                      // String studentPasswordText =
                      //     studentPasswordController.text;
                      // String studentIdText = studentIdController.text;
                    },
                    buttonText: "    🔓 signin    ",
                    textSize: width * 0.01),
                SizedBox(width: width * 0.02),
                AppButton(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  buttonText: "    🛑 cancel    ",
                  textSize: width * 0.01,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
};

WidgetBuilder signInAsAdminDialog = (context) {
  var Size(:width, :height) = MediaQuery.sizeOf(context);
  TextEditingController adminEmailController = TextEditingController();
  TextEditingController adminPasswordController = TextEditingController();
  return Dialog(
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.all(width * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Enter Your Email and Password',
            style: GoogleFonts.quicksand(
                fontSize: width * 0.01, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: width * 0.3,
            child: Padding(
              padding: EdgeInsets.only(bottom: width * 0.01, top: width * 0.01),
              child: AppTextField(
                textController: adminEmailController,
                labelText: 'Email',
                suffixIcon: Icons.email,
              ),
            ),
          ),
          SizedBox(
            width: width * 0.3,
            child: Padding(
              padding: EdgeInsets.only(bottom: width * 0.01),
              child: AppTextField(
                textController: adminPasswordController,
                labelText: 'Password',
                suffixIcon: Icons.lock,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppButton(
                  onTap: () {
                    // String adminEmailText = adminEmailController.text;
                    // String adminPasswordText = adminPasswordController.text;
                  },
                  buttonText: "    🔓 signin    ",
                  textSize: width * 0.01,
                ),
                SizedBox(width: width * 0.02),
                AppButton(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  buttonText: "    🛑 cancel    ",
                  textSize: width * 0.01,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
};
