import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/appbar/appbar.dart';
import 'package:iecommerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:iecommerce/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:iecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:iecommerce/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(title: Text('Reviews & Rating', style: Theme.of(context).textTheme.headlineSmall) ,showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and reviews are verified and are from people who use the same type of device that you use."), 
              const SizedBox (height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator (rating: 3.5),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox (height: TSizes.spaceBtwSections),

              // User Review List
              const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
          )
      ),
    );
  }
}