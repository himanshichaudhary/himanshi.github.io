import 'package:devportfoilio/sections/demo_folder/demo.dart';
import 'package:flutter/material.dart';

import '../sections/about/about.dart';
import '../sections/contact/contact.dart';
import '../sections/home/home.dart';
import '../sections/portfolio/portfolio.dart';
import '../sections/services/services.dart';
import '../widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  //static const String blackWhitePhoto = 'assets/photos/black-white.png';
  static const String blackWhitePhoto = 'assets/photos/round_dp.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/website_dev.png';
  static const String blog = 'assets/services/digital_market.png';
  static const String appDev = 'assets/services/mobile_icon1.png';
  static const String rapid = 'assets/services/ux_ui_design.png';
  static const String openSource = 'assets/services/blog_icon.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    // "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    // "https://facebook.com/mhmzdev",
    "https://www.instagram.com/the_flutter_dev/",
    "https://www.linkedin.com/in/himanshi-chaudhary-04b9791a9/",
    "https://github.com/himanshichaudhary",
    // "https://mhmzdev.medium.com"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1bDNNrkQtNVJbXcdwMSx0crQQvAF_nMwV/view?usp=sharing';

  static const String gitHub =
      'https://www.upwork.com/freelancers/~013e20377d6b663744?viewMode=1';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
