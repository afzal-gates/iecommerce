import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:iecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:iecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:iecommerce/features/authentication/screens/login/widgets/login_header.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo
              const TLoginHeader(),
              //Form
              const TLoginForm(),
              //Divider
              TFormDivider(dividerText: TTexts.orSigninWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Footer
              const TSocialButtons()
            ]
        )
        ),
      ),
    );
  }
}
