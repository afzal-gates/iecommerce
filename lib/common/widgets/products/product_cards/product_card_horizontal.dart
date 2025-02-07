import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:iecommerce/common/widgets/icons/circular_icon.dart';
import 'package:iecommerce/common/widgets/images/rounded_image.dart';
import 'package:iecommerce/common/widgets/products/favourite_icon/favourite_icon.dart';
import 'package:iecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:iecommerce/common/widgets/texts/product_price_text.dart';
import 'package:iecommerce/common/widgets/texts/product_title_text.dart';
import 'package:iecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(()=> const ProfileDetailScreen()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          //boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.grey,
        ),
        child: Row(
          children: [
          /// Thumbnail, Wishlist Button, Discount Tag
          TRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(children: [
                //Thumbnail Image
                const TRoundedImage(
                    imageUrl: TImages.productImage1, applyImageRadius: true),

                // Sole Tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black)),
                  ),
                ),

                //Favourite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TFavouriteIcon(productId: '1'),
                ),
              ])),

              const SizedBox(height: TSizes.spaceBtwItems / 2),

          //Details
          SizedBox(
            width: 172,
            child: Padding(
                  padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                  child: Column(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                              TProductTitleText(title: 'Green Nike Air Shoes', smallSize: true),
                              SizedBox(height: TSizes.spaceBtwItems / 2),
                              TBrandTitleWithVerifiedIcon(title: 'Nike')
                              ]
                            ),

                            const Spacer(),

                            //Price Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /// Price
                                const Flexible(child:  TProductPriceText(price: '35.5')),
                                // Add to Cart
                                Container(
                                  decoration: const BoxDecoration(
                                    color: TColors.dark,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                                      bottomRight: Radius.circular(TSizes.productImageRadius),
                                    ),
                                  ),
                                  child: const SizedBox(
                                    width: TSizes.iconLg * 1.2,
                                    height: TSizes.iconLg * 1.2,
                                    child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                                  ),
                                ),
                              ],
                            )
                        ],
                      ),

                      
            ),
          ),


          
        ]),
      ),
    );
  }
}
