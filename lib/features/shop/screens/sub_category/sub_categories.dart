import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/images/rounded_image.dart';
import 'package:iecommerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:iecommerce/common/widgets/texts/section_heading.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
            showBackArrow: true,
            title: Text('Sports',
                style: Theme.of(context).textTheme.headlineSmall)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Banner
                const TRoundedImage(
                    width: double.infinity,
                    imageUrl: TImages.promoBanner1,
                    applyImageRadius: true),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// Sub-Categories
                Column(children: [
                  /// Heading
                  TSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal(),
                    ), // ListView.separated
                  ),
                ])
              ],
            ),
          ),
        ));
  }
}
