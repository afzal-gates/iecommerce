import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:iecommerce/common/widgets/icons/circular_icon.dart';
import 'package:iecommerce/common/widgets/images/rounded_image.dart';
import 'package:iecommerce/common/widgets/texts/section_heading.dart';
import 'package:iecommerce/features/shop/screens/product_details/widgets/bottom_add_to_card.dart';
import 'package:iecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:iecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:iecommerce/features/shop/screens/product_details/widgets/product_mete_data.dart';
import 'package:iecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:iecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Slider
            TProductImageSlider(),

            // Product Details
            Padding(
                padding: const EdgeInsets.only(
                    right: TSizes.defaultSpace,
                    left: TSizes.defaultSpace,
                    bottom: TSizes.defaultSpace),
                child: Column(children: [
                  /// Rating & Share Button
                  TRatingAndShare(),
                  TProductMetaData(),

                  TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //Checkout Button
                  SizedBox (width: double.infinity, child: ElevatedButton (onPressed: () {}, child: Text('Checkout'))),
                  const SizedBox (height: TSizes.spaceBtwSections),

                  /// Description
                  const TSectionHeading (title: 'Description', showActionButton: false),
                  const SizedBox (height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am a developer. This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am a developer.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText:  'Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),


                  /// - Reviews
                  const Divider(),
                  const SizedBox (height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading (title: 'Review (199)', showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3,size: 18), onPressed: ()=> Get.to(()=> const ProductReviewsScreen()))
                      
                    ],
                  ),

                  const SizedBox (height: TSizes.spaceBtwSections),

                ])),
          ],
        ),
      ),
    );
  }
}
