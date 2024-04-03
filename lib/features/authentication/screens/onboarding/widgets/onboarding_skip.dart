
import 'package:flutter/material.dart';
import 'package:iecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = OnBoardingController.instance;
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: const Text('Skip'),
        )
    );
  }
}
