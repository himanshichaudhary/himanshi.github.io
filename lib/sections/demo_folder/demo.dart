import 'package:devportfoilio/responsive/responsive.dart';
import 'package:devportfoilio/sections/demo_folder/demo_desktop.dart';
import 'package:flutter/material.dart';

import 'mobile_demo.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  @override
  Widget build(BuildContext context) {
    return  Responsive(
        mobile: MobileDemo(),
        tablet: MobileDemo(),
        desktop: DesktopDemo()
    );

  }
}
