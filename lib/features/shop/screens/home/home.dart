import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:iecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:iecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:iecommerce/common/widgets/texts/section_heading.dart';
import 'package:iecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:iecommerce/features/shop/screens/brands/all_brands.dart';
import 'package:iecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:iecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:iecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
           TPrimaryHeaderContainer(
              // child: Container(),
              child: Column(
            children: [
              const THomeAppBar(),
              const SizedBox(width: TSizes.spaceBtwSections),

              const TSearchContainer(text: 'Search here...', padding: EdgeInsets.zero),
              const SizedBox(height: TSizes.spaceBtwSections),
              
              //Categories -- Tutorial [Section # 3, Video # 4]
              Padding(
                padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///-- Heading
                    TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: true,
                        textColor: Colors.white, onPressed: () => Get.to(()=> const AllBrandsScreen())),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Categories
                    const THomeCategories(),
                  ]
                ), // Column
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          )          
          ),

          // Body of Home

          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3]),
                const SizedBox(height: TSizes.spaceBtwSections),

                TSectionHeading( title: 'Popular Products', showActionButton: true, textColor: Colors.white, onPressed: () => Get.to(()=> const AllProducts()), ),
                const SizedBox(height: TSizes.spaceBtwItems),
                
                TGridLayout(itemCount: 2, itemBuilder: (_ , index) => const TProductCardVertical()),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ClipPath(
//               clipper: TCustomCurvedEdges(),
//               child: Container(
//                 color: TColors.primary,
//                 padding: const EdgeInsets.all(0),
//                 child: SizedBox(
//                   height: 400,
//                   child: Stack(children: [
//                     Positioned(
//                         top: -150,
//                         right: -250,
//                         child: TCircularContainer(
//                             backgroundColor: TColors.textWhite.withOpacity(0.1))),
//                     Positioned(
//                         top: 100,
//                         right: -300,
//                         child: TCircularContainer(
//                             backgroundColor: TColors.textWhite.withOpacity(0.1))),
//                   ]),
//                 ),
//               ),
//             ),
//         ]),
//       ),
//     );
//   }
// }

