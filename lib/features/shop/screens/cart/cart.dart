import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:iecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:iecommerce/common/widgets/texts/product_price_text.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
            showBackArrow: true,
            title:  Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 10,
                    separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
                    itemBuilder: (_, index) => const Column(children: [
                          TCartItem(),
                          SizedBox(height: TSizes.spaceBtwItems),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  /// Extra Space -
                                  SizedBox(width: 70),

                                  /// Add Remove Buttons
                                  TProductQuantityWithAddRemoveButton(),

                                ]),
                                //Product total price
                                TProductPriceText(price: '256'),
                              ])
                        ]))
                        ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text('Checkout \$254.0')),
      ),
    );
  }
}