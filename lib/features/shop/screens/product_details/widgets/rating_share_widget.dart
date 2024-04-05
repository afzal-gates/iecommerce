import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:iecommerce/common/widgets/icons/circular_icon.dart';
import 'package:iecommerce/common/widgets/images/rounded_image.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Rating
          Row(children: [
            const Icon(Iconsax.star5,
                color: Colors.amber, size: 24),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0',
                  style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(199)'),
            ]))
          ]),

          /// Share Button
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share, size: TSizes.iconMd))
        ]);
  }
}