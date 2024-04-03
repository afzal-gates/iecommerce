import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:iecommerce/common/widgets/images/circular_image.dart';
import 'package:iecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/enums.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';
import 'package:iecommerce/utils/constants/sizes.dart';
import 'package:iecommerce/utils/helpers/helper_functions.dart';


class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        showBorder:showBorder,
        padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Expanded(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.productImage1,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode (context)? TColors.white : TColors.black,
              ),
            ), 
            const SizedBox (width: TSizes.spaceBtwItems / 2),
            ///-- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large), 
                  Text('256 products of this brand', overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium),
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}
