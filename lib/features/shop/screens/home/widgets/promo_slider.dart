import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:iecommerce/common/widgets/images/rounded_image.dart';
import 'package:iecommerce/features/shop/controllers/home_controller.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());

    return Column(children: [
      CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) =>  TRoundedImage(imageUrl: url)).toList(),
          ),
      const SizedBox(height: TSizes.spaceBtwItems),
      Obx(
        () => Row(
          children: [
            for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                width: 20,
                height: 4,
                margin: const EdgeInsets.only(right: 10),
                backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.primary : TColors.grey,
              )
          ]
        ),
      ),
    ]);
  }
}
