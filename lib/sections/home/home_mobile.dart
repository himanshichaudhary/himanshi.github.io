import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../utils/utils.dart';
import '../../widget/social_links.dart';
import 'package:provider/provider.dart';
import '../../provider/app_provider.dart';
import '../../animations/entrance_fader.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.02,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Positioned(
          //   bottom: 0.0,
          //   right: -AppDimensions.normalize(25),
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: Image.asset(
          //       StaticUtils.blackWhitePhoto,
          //       height: AppDimensions.normalize(150),
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(0),
              AppDimensions.normalize(70),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                //     Text(
                //       "HEY THERE! ",
                //       style: AppText.b2!.copyWith(
                //         fontFamily: 'Montserrat',
                //       ),
                //     ),
                //     Space.x!,
                //     Image.asset(
                //       StaticUtils.hi,
                //       height: AppDimensions.normalize(10),
                //     ),
                //   ],
                // ),
                // Space.y!,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'WELCOME TO MY PORTFOLIO! ',
                      style: AppText.b1!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  "Himanshi",
                  style: AppText.h1b!.copyWith(
                    fontFamily: 'Montserrat',
                    color: appProvider.isDark ? Colors.white : Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Chaudhary",
                  style: AppText.h3b!.copyWith(
                    height: 1,
                    color: appProvider.isDark ? Colors.white : Colors.white,
                  ),
                ),
                Space.y!,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          ' Flutter Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          ' Android Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          '  :)',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
                const SocialLinks(),
              ],
            ),
          ),
          Container(
            height: 5,
            width: size.width,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
