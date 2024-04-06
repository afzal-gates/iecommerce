import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/products/brand_card/brand_card.dart';
import 'package:iecommerce/common/widgets/products/sortable/sortable_products.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Heading
                TBrandCard(showBorder: true),
                SizedBox(height: TSizes.spaceBtwItems),                
                TSortableProducts()
              ],
            )),
      ),
    );
  }
}