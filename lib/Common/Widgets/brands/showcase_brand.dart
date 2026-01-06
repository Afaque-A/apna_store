import 'package:apna_store/Common/Widgets/brands/brands_card.dart';
import 'package:apna_store/Common/Widgets/rounded_container.dart';
import 'package:apna_store/utils/constants/colors.dart';
import 'package:apna_store/utils/constants/images.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ShowCaseBrand extends StatelessWidget {
  const ShowCaseBrand({super.key, required this.image});

  final List<String> image;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,

      borderColor: UColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(USizes.sm),
      margin: EdgeInsets.only(bottom: USizes.spaceBtwItems),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BrandsCard(showBorder: false),
          Row(children: image.map((image) => buildBrandImage(image)).toList()),
        ],
      ),
    );
  }

  Widget buildBrandImage(String image) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        showBorder: true,
        borderColor: UColors.darkGrey,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(USizes.sm),
        margin: EdgeInsets.only(right: USizes.sm),
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
