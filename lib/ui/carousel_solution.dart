import 'package:flutter/material.dart';  
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:fraktal_platform/constants/colors.dart';
import 'package:fraktal_platform/ui/text.dart';

class CarouselItem {
  final String imagePath;
  final String caption;
  final String subtitle;

  CarouselItem({
    required this.imagePath,
    required this.caption,
    required this.subtitle,
  });
}

class CarouselSolution extends StatefulWidget {
  final List<CarouselItem> items;
  final double width;

  const CarouselSolution({
    super.key,
    required this.items,
    required this.width,
  });

  @override
  _CarouselSolutionState createState() => _CarouselSolutionState();
}

class _CarouselSolutionState extends State<CarouselSolution> {
  final FlutterCarouselController _buttonCarouselController = FlutterCarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      color: Colors.white,
      child: SizedBox(
        child: FlutterCarousel(
          options: FlutterCarouselOptions(
            height: 400,
            controller: _buttonCarouselController,
            autoPlay: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: false,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {});
            },
            slideIndicator: CircularSlideIndicator(
              slideIndicatorOptions: SlideIndicatorOptions(
                alignment: Alignment.bottomCenter,
                currentIndicatorColor: Colors.white,
                indicatorBackgroundColor: Colors.white.withOpacity(0.5),
                indicatorBorderColor: Colors.white,
                indicatorBorderWidth: 1,
                indicatorRadius: 6,
                itemSpacing: 20,
                padding: const EdgeInsets.all(8.0),
                haloDecoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  color: AppColors.primaryColor.withOpacity(0.5),
                ),
                haloPadding: const EdgeInsets.all(4.0),
                enableHalo: true,
                enableAnimation: true,
              ),
            ),
          ),
          items: widget.items.map((item) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        typeText: TextType.text6Xl,
                        item.caption,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.blueBold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        item.subtitle,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    item.imagePath,
                    width: 400,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
