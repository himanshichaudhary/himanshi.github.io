import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../animations/entrance_fader.dart';
import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../provider/app_provider.dart';
import '../../utils/utils.dart';
import '../../widget/social_links.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

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
          //   bottom: 0,
          //   right: 0,
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: EntranceFader(
          //       offset: const Offset(0, 0),
          //       delay: const Duration(seconds: 1),
          //       duration: const Duration(milliseconds: 800),
          //       child: Image.asset(
          //         StaticUtils.blackWhitePhoto,
          //         height: size.width < 1200
          //             ? size.height * 0.75
          //             : size.height * 0.85,
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(50),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                Text(
                  "Chaudhary",
                  style: AppText.h1b!.copyWith(
                    height: 1,
                    color: appProvider.isDark ? Colors.white : Colors.white,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
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
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
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
