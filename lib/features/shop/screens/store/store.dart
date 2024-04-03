import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/appbar/tabbar.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:iecommerce/common/widgets/images/circular_image.dart';
import 'package:iecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:iecommerce/common/widgets/products/brand_card/brand_card.dart';
import 'package:iecommerce/common/widgets/products/brand_card/brand_showcase.dart';
import 'package:iecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:iecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:iecommerce/common/widgets/texts/section_heading.dart';
import 'package:iecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/enums.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: (){})
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled){
            return [
              SliverAppBar(
                automaticallyImplyLeading: false, 
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode (context)? TColors.black: TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search bar
                      const SizedBox (height: TSizes.spaceBtwItems),
                      const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      /// Featured Brands
                      TSectionHeading(title: 'Featured Brands', onPressed:(){}),
                      const SizedBox (height: TSizes.spaceBtwItems / 1.5),
                      
                      TGridLayout(
                        itemCount: 4, 
                        mainAxisExtent: 80, 
                        itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: false);
                        }
                      )
                    ],
                  ),
              ),
              bottom: const TTabBar(
                tabs: [
                  Tab(child: Text('Sports'),),
                  Tab(child: Text('Furnitures'),),
                  Tab(child: Text('Electronics'),),
                  Tab(child: Text('Clothes'),),
                  Tab(child: Text('Others'),),      
                  Tab(child: Text('New Others'),),      
              ]),
            ),
          ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),        
        ),
      ),
    );
  }
}
