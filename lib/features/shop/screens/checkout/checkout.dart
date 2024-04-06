import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:iecommerce/common/widgets/products/cart/coupon_code.dart';
import 'package:iecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:iecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:iecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:iecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:iecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:iecommerce/navigation_menu.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Checkout',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Item Cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Coupon
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Billing Section

              const SizedBox(height: TSizes.spaceBtwSections),
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.only(
                    top: TSizes.sm,
                    bottom: TSizes.sm,
                    right: TSizes.sm,
                    left: TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    //pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //Payment Method
                    TBillinPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //Billing Address
                    TBillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
              image: TImages.paypal,
              title: 'Pyment Success',
              subTitle: 'Your payment successfully received',
              onPressed: () => Get.offAll(()=> const NavigationMenu()),
            )),
            child: const Text('Checkout \$254.0')),
      ),
    );
  }
}
