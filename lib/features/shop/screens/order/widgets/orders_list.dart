import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_,__)=> const  SizedBox(width: TSizes.spaceBtwItems),
      itemBuilder: (_,index) => TRoundedContainer(
          showBorder: true,
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.dark : TColors.light,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ///-- Row 1
            Row(children: [
              /// 1 - Icon
              const Icon(Iconsax.ship),
              const SizedBox(width: TSizes.spaceBtwItems / 2),
      
              /// 2 Status & Date
              Expanded(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ), // Text
                      Text('07 Nov 2024',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ]),
              ),
      
              /// 3- Icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconsm)),
            ]),
      
            const SizedBox(height: TSizes.spaceBtwItems),
      
            //Row 2
            Row(
              children: [
              Expanded(
                  child: Row(children: [
                /// 1 - Icon
                const Icon(Iconsax.tag),
                const SizedBox(width: TSizes.spaceBtwItems / 2),
      
                /// 2 Status & Date
                Expanded(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order', style: Theme.of(context).textTheme.labelMedium),
                        Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium),
                      ]),
                ),
              ])),
              Expanded(
                  child: Row(children: [
                /// 1 - Icon
                const Icon(Iconsax.calendar),
                const SizedBox(width: TSizes.spaceBtwItems / 2),
      
                /// 2 Status & Date
                Expanded(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                        Text('15 Jan 2025', style: Theme.of(context).textTheme.titleMedium),
                      ]),
                ),
              ]))
            ])
          ])),
    );
  }
}