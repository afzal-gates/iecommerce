import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:iecommerce/common/widgets/products/brand_card/brand_showcase.dart';
import 'package:iecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:iecommerce/common/widgets/texts/section_heading.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),      
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
              /// Brands
              const TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1]),
              const SizedBox(width: TSizes.spaceBtwItems),
              // Products
              TSectionHeading(title: 'You might like', showActionButton: true, onPressed: () {}),
              const SizedBox(width: TSizes.spaceBtwItems),
          
              TGridLayout(itemCount: 3, itemBuilder: (_ , index) => const TProductCardVertical()),
              const SizedBox(width: TSizes.spaceBtwSections),
            ]),
          ),
        ],
    );
  }
}
