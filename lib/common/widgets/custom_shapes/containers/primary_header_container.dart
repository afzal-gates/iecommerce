import 'package:flutter/material.dart';
import 'package:iecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:iecommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:iecommerce/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        // padding: const EdgeInsets.all(0),
        padding: const EdgeInsets.only(bottom: 0),

        /// If [size.isFinite': is not true.in Stock] error occurred →→ Read README.md file at
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1))),
            Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                )),
                child,
          ]),
        ), // Stack
      ), // Container
    ); // TCurvedEdgesWidget
  }
}
