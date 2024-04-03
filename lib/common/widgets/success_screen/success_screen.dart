import 'package:flutter/material.dart';
import 'package:iecommerce/common/styles/spacing_styles.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/constants/text_strings.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.subTitle, required this.image, required this.onPressed});

  final String title, subTitle, image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight * 2,
            child: Column(children: [
              /// Image
              Image(
                  image: AssetImage(image),
                  width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(TTexts.tContinue))),
            ]),
          ),
        )
      );
  }
}
