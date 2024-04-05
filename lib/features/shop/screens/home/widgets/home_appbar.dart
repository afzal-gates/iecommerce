
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:iecommerce/features/shop/screens/cart/cart.dart';
import 'package:iecommerce/utils/constants/colors.dart';
import 'package:iecommerce/utils/constants/text_strings.dart';


class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey)),
          Text(TTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white))
        ],
      ),
      actions: [TCartCounterIcon(onPressed: ()=> Get.to(()=> const CartScreen()), iconColor: TColors.white)],
    );
  }
}
