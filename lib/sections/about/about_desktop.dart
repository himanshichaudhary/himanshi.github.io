import 'package:flutter/material.dart';

import 'package:universal_html/html.dart' as html;

import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/color_manager.dart';
import '../../configs/space.dart';
import '../../constants.dart';
import '../../utils/about_utils.dart';
import '../../utils/utils.dart';
import '../../utils/work_utils.dart';
import '../../widget/about_me_data.dart';
import '../../widget/community_button.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/tech_widget.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: height,
          padding: Space.h,
          child: Column(
            children: [
              const CustomSectionHeading(
                text: '\nAbout Me',
              ),
              const CustomSectionSubHeading(
                text: 'Get to know me :)',
              ),
              Space.y1!,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: width < 1230 ? 2 : 2,
                    child: Container(
                      padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AboutUtils.aboutMeHeadline,
                            style: AppText.b1b!.copyWith(
                              fontFamily: 'Montserrat',
                              color: whiteTextColor,
                            ),
                          ),
                          Space.y!,
                          Text(
                            AboutUtils.aboutMeDetail,
                            style: AppText.b2!.copyWith(
                              height: 2,
                              letterSpacing: 1.1,
                              fontFamily: 'Montserrat',
                              fontSize: AppDimensions.normalize(5),
                              color: whiteTextColor,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          // Space.x!,
                          // Divider(
                          //   color: Colors.grey[800],
                          //   thickness: AppDimensions.normalize(0.5),
                          // ),
                          // Space.y!,
                          // Text(
                          //   'Technologies I have worked with:',
                          //   style: AppText.b1b!.copyWith(
                          //     color: whiteTextColor,
                          //   ),
                          // ),
                          // Space.y!,
                          Row(
                            children: kTools
                                .map((e) => ToolTechWidget(
                                      techName: e,
                                    ))
                                .toList(),
                          ),
                          // Space.y!,
                          // Divider(
                          //   color: Colors.grey[800],
                          //   thickness: AppDimensions.normalize(0.5),
                          // ),
                          // Row(
                          //   children: [
                          //     Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: const [
                          //         AboutMeData(
                          //           data: "Name",
                          //           information: "Himanshi Chaudhary",
                          //         ),
                          //         // AboutMeData(
                          //         //   data: "Age",
                          //         //   information: "24",
                          //         // ),
                          //       ],
                          //     ),
                          //     const Spacer(),
                          //     Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: const [
                          //         AboutMeData(
                          //           data: "Email",
                          //           information: "er.himanshichaudhary01@gmail.com",
                          //         ),
                          //         AboutMeData(
                          //           data: "From",
                          //           information: "Chandigarh, India",
                          //         ),
                          //       ],
                          //     ),
                          //   ],
                          // ),
                          Space.y1!,
                          // Row(
                          //   children: [
                          //     SizedBox(
                          //       height: AppDimensions.normalize(13),
                          //       width: AppDimensions.normalize(40),
                          //       child: OutlinedButton(
                          //         onPressed: () =>
                          //             html.window.open(StaticUtils.resume, 'pdf'),
                          //         child: const Text(
                          //           "Resume",
                          //         ),
                          //       ),
                          //     ),
                          //     Space.x1!,
                          //     Container(
                          //       color: Colors.grey[900]!,
                          //       width: AppDimensions.normalize(30),
                          //       height: AppDimensions.normalize(0.5),
                          //     ),
                          //     ...WorkUtils.logos.asMap().entries.map(
                          //           (e) => Expanded(
                          //             child: CommunityIconBtn(
                          //               icon: e.value,
                          //               link: WorkUtils.communityLinks[e.key],
                          //               height:
                          //                   WorkUtils.communityLogoHeight[e.key],
                          //             ),
                          //           ),
                          //         )
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      StaticUtils.blackWhitePhoto,
                      height: height * 0.6,
                    ),
                  ),
                  // Container(
                  //   width: width < 1230 ? width * 0.05 : width * 0.1,
                  // ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 10,
          width: width,
          color: Colors.white,
        )
      ],
    );
  }
}
