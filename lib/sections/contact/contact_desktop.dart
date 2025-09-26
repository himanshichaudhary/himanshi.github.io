import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../animations/bottom_animation.dart';
import '../../configs/app_dimensions.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../provider/app_provider.dart';
import '../../utils/contact_utils.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/project_card.dart';


class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

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
            style:    AppText.h1b!.copyWith(
      fontSize: AppDimensions.normalize(20),
      height: 1,
      color: appProvider.isDark ? Colors.black : Colors.black,
    ),
          ),
           Text(
             "Let's build something together :)\n\n",
             style:  AppText.l1!.copyWith(
           fontFamily: 'Montserrat',
               color: appProvider.isDark ? Colors.black : Colors.black,
           ),
          ),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: ContactUtils.contactIcon
                  .asMap()
                  .entries
                  .map((e) => WidgetAnimator(
                        child: ProjectCard(
                          projectIconData: e.value,
                          projectTitle: ContactUtils.titles[e.key],
                          projectDescription: ContactUtils.details[e.key],
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
