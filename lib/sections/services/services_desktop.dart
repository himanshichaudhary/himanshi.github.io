part of 'services.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

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
                text: '\nWhat I can do?',
              ),
              const CustomSectionSubHeading(
                text: 'Your vision, my code:)\n\n',
              ),
              Space.y!,
              CarouselSlider.builder(
                itemCount: ServicesUtils.servicesTitles.length,
                itemBuilder: (BuildContext context, int itemIndex, int i) =>
                    Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: _ServiceCard(
                    serviceIcon: ServicesUtils.servicesIcons[i],
                    serviceTitle: ServicesUtils.servicesTitles[i],
                    serviceDescription: ServicesUtils.servicesDescription[i],
                  ),
                ),
                options: CarouselOptions(
                  viewportFraction: 0.35,
                  height: width < 450 ? height * 0.4 : height * 0.4,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 1),
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  enableInfiniteScroll: false,
                ),
              )
              // Wrap(
              //   spacing: width * 0.05,
              //   runSpacing: height * 0.01,
              //   alignment: WrapAlignment.center,
              //   crossAxisAlignment: WrapCrossAlignment.center,
              //   children: ServicesUtils.servicesIcons
              //       .asMap()
              //       .entries
              //       .map(
              //         (e) => _ServiceCard(
              //           serviceIcon: ServicesUtils.servicesIcons[e.key],
              //           serviceTitle: ServicesUtils.servicesTitles[e.key],
              //           serviceDescription:
              //               ServicesUtils.servicesDescription[e.key],
              //         ),
              //       )
              //       .toList(),
              // )
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
