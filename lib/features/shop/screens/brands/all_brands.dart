import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:iecommerce/common/widgets/products/brand_card/brand_card.dart';
import 'package:iecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:iecommerce/common/widgets/products/sortable/sortable_products.dart';
import 'package:iecommerce/common/widgets/texts/section_heading.dart';
import 'package:iecommerce/features/shop/screens/brands/brand_products.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Heading
                const TSectionHeading(title: 'Brands', showActionButton: true),
                const SizedBox(height: TSizes.spaceBtwItems),
                
                //Brands
                TGridLayout(
                  itemCount: 8, 
                  mainAxisExtent: 80, 
                  itemBuilder: (context, index) => TBrandCard(
                    showBorder: true,
                    onTap: ()=> Get.to(()=> const BrandProducts()),
                  )
                )
              ],
            )),
      ),
    );
  }
}
