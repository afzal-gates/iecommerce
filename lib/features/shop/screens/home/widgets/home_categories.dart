import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/image_text/vertical_image_text.dart';
import 'package:iecommerce/features/shop/screens/sub_category/sub_categories.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return TVerticalImageText(image: TImages.shoeIcon, title: 'Shoes', onTap: () => Get.to(()=> const SubCategoriesScreen()));
            }));
  }
}
