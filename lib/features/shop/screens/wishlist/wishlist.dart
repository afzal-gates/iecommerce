import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/icons/circular_icon.dart';
import 'package:iecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:iecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:iecommerce/features/shop/controllers/product/favourites_controller.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

import '../home/home.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = FavouriteController.instance;
    return Scaffold(
        appBar: TAppBar (
          title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
            actions: [
              TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
            ]
        ), // TAppBar
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
                children: [
                  TGridLayout(itemCount: 14, itemBuilder: (_, index)=> const TProductCardVertical())],
            ),
          ),
        ),

      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(TSizes.defaultSpace),
      //     child: Column(
      //       children: [
      //         FutureBuilder(
      //             future: controller.favoriteProducts(),
      //             builder: (context, snapshot) {
      //               return TGridLayout(itemCount: 14, itemBuilder: (_, index)=> const TProductCardVertical());
      //             }
      //         )],
      //     ),
      //   ),
      // ),
      //
    );
  }
}
