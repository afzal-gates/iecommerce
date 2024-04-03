import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:iecommerce/features/authentication/screens/login/login.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/constants/text_strings.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({
    super.key,
    //required this.email
  });
  //final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        // Padding to Give Default Equal Space on all sides in all screens.
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            /// Image
            Image(
              image: const AssetImage(TImages.deliveredEmailIllustration),
              width: THelperFunctions.screenWidth() * 0.6,
            ),

            /// Title & Subtitle
            const SizedBox(height: TSizes.spaceBtwSections),
            Text(TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text("afzal@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),

            /// Buttons
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                      image: TImages.staticSuccessIllustration, 
                      title: TTexts.yourAccountCreatedTitle, 
                      subTitle: TTexts.yourAccountCreatedSubTitle, 
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),),
                    child: const Text(TTexts.tContinue))),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => Get.to(() => const VerifyEmailScreen()),
                    child: const Text(TTexts.resendEmail))),
          ]), // Column
        ), // Padding
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
