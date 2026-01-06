import 'package:apna_store/Common/Widgets/brands/brands_card.dart';
import 'package:apna_store/Common/Widgets/text/section_heading.dart';
import 'package:apna_store/features/shop/screen/store_screen/widget/store_primary_header.dart';
import 'package:apna_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 300,
              pinned: true,
              floating: true,
              flexibleSpace: Column(
                children: [
                  const StorePrimaryHeader(),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: USizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        SectionHeading(title: 'Brands', onPressed: () {}),

                        SizedBox(
                          height: USizes.brandCardHeight,
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                SizedBox(width: USizes.spaceBtwItems),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return BrandsCard();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
