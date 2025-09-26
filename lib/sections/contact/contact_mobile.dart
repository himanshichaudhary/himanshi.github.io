import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../configs/app_dimensions.dart';
import '../../utils/contact_utils.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/project_card.dart';
import '../../provider/app_provider.dart';
import 'package:provider/provider.dart';
import '../../configs/space.dart';
import '../../configs/app_typography.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Container(
      color: appProvider.isDark ? Colors.white : Colors.white,
      padding: Space.all(1, 1),
      child: Column(
        children: [
          Text(
            "\nGet in Touch",
            style: AppText.h1b!.copyWith(
              fontSize: AppDimensions.normalize(20),
              height: 1,
              color: appProvider.isDark ? Colors.black : Colors.black,
            ),
          ),
          Text(
            "Let's build something together :)\n\n",
            style: AppText.l1!.copyWith(
              fontFamily: 'Montserrat',
              color: appProvider.isDark ? Colors.black : Colors.black,
            ),
          ),
          Space.y!,
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                projectIconData: ContactUtils.contactIcon[i],
                projectTitle: ContactUtils.titles[i],
                projectDescription: ContactUtils.details[i],
              ),
            ),
            options: CarouselOptions(
              height: AppDimensions.normalize(90),
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          ),
        ],
      ),
    );
  }
}
