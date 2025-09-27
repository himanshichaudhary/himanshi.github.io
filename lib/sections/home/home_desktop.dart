import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devportfoilio/configs/color_manager.dart';
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

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 1.025,
      //padding: Space.h,
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
          //         width: size.width / 2.5,
          //         height: size.width < 1200
          //             ? size.height * 0.8
          //             : size.height * 0.85,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),

          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Himanshi",
                      style: AppText.h1b!.copyWith(
                        fontSize: AppDimensions.normalize(25),
                        height: 1,
                        color: appProvider.isDark ? Colors.white : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Chaudhary",
                      style: AppText.h1b!.copyWith(
                        fontSize: AppDimensions.normalize(25),
                        height: 1,
                        color: appProvider.isDark ? Colors.white : Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
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
                        color: blueLight,
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
                            ' REST APIs ',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' Firebase Database ',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' :) ',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const SocialLinks(),
              ],
            ),
          ),
          Container(
            height: 10,
            width: size.width,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
