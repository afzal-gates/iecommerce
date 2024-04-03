import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/image_text/vertical_image_text.dart';
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
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return TVerticalImageText(
                  image: TImages.shoeIcon, title: 'Shoes', onTap: () {});
            }));
  }
}
