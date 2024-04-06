import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/chips/choice_chip.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:iecommerce/common/widgets/texts/product_price_text.dart';
import 'package:iecommerce/common/widgets/texts/product_title_text.dart';
import 'package:iecommerce/common/widgets/texts/section_heading.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected Attribute Pricing & Description
        TRoundedContainer(
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
            child: Column(children: [
              /// Title, Price and Stock Staus
              Row(children: [
                const TSectionHeading(
                    title: 'Variation', showActionButton: false),
                const SizedBox(width: TSizes.spaceBtwItems),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        const TProductTitleText(title: 'Price: ', smallSize: true),
                        // const SizedBox(width: TSizes.spaceBtwItems),

                        /// Actual Price
                        Text(
                          '\$25',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),

                        /// Sale Price
                        const TProductPriceText(price: '20'),
                      ]),

                      //Stack
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ',smallSize: true),
                          Text('In Stock', style: Theme.of(context) .textTheme.titleMedium),
                        ],
                      )

                ])
              ]),

              ///Vertical Description
              const TProductTitleText(
                title: 'This id the description of the product and it can show upto 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ])),

        const SizedBox(width: TSizes.spaceBtwItems),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TSectionHeading (title: 'Colors', showActionButton: false),
              const SizedBox (height: TSizes.spaceBtwItems / 2),
              Wrap(
                spacing: 8,
                children: [
                  TChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
                  TChoiceChip(text: 'Blue', selected: true, onSelected: (value) {}),
                  TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
                ]
              )
            ]
        ),

        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TSectionHeading (title: 'Sizes', showActionButton: false),
              const SizedBox (height: TSizes.spaceBtwItems / 2),
              Wrap(
                  spacing: 8,
                  children: [
                    TChoiceChip(text: 'EU 34', selected: false, onSelected: (value){}),
                    TChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
                    TChoiceChip(text: 'EU 38', selected: true, onSelected: (value){}),
                  ]
              )
            ]
        ),

      ],
    );
  }
}
