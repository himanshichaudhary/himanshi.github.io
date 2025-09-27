part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

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
                text: 'Your vision, my code :)\n\n',
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
            ],
          ),
        ),
        Container(
          height: 5,
          width: width,
          color: Colors.white,
        )
      ],
    );
  }
}
