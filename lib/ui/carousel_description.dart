import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:fraktal_platform/constants/colors.dart';

class CarouselDescription extends StatefulWidget {
  final List<String> imagePaths;

  const CarouselDescription({super.key, required this.imagePaths});

  @override
  // ignore: library_private_types_in_public_api
  _CarouselDescriptionState createState() => _CarouselDescriptionState();
}

class _CarouselDescriptionState extends State<CarouselDescription> {
  final FlutterCarouselController _buttonCarouselController = FlutterCarouselController();
  // ignore: unused_field
  int _currentPage = 0;

  void _nextPage() {
    _buttonCarouselController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _previousPage() {
    _buttonCarouselController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 600,
          child: FlutterCarousel(
           
            options: FlutterCarouselOptions(
              slideIndicator: CircularSlideIndicator(
        slideIndicatorOptions: SlideIndicatorOptions(
          /// The alignment of the indicator.
          alignment: Alignment.bottomCenter,

          /// The color of the currently active item indicator.
          currentIndicatorColor: Colors.white,

          /// The background color of all inactive item indicators.
          indicatorBackgroundColor: Colors.white.withOpacity(0.5),

          /// The border color of all item indicators.
          indicatorBorderColor: Colors.white,

          /// The border width of all item indicators.
          indicatorBorderWidth: 1,

          /// The radius of all item indicators.
          indicatorRadius: 6,

          /// The spacing between each item indicator.
          itemSpacing: 20,

          /// The padding of the indicator.
          padding: const EdgeInsets.all(8.0),

          /// The decoration of the indicator halo.
          haloDecoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              color: AppColors.primaryColor.withOpacity(0.5)),

          /// The padding of the indicator halo.
          haloPadding: const EdgeInsets.all(4.0),

          /// Whether to enable the indicator halo.
          enableHalo: true,

          /// Whether to enable the animation. Only used in [CircularStaticIndicator] and [SequentialFillIndicator].
          enableAnimation: true,
        ),
      ),
              height: 600,
              controller: _buttonCarouselController,
              autoPlay: true,
              enableInfiniteScroll: true,
               
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
            items: widget.imagePaths.map((imagePath) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
          ),
        ),
        Positioned(
          left: 16,
          top: (600 / 2) ,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
            onPressed: _previousPage,
          ),
        ),
        Positioned(
          right: 16,
          top: (600 / 2),
          child: IconButton(
            icon: Icon(Icons.arrow_forward_ios_sharp, color: AppColors.primaryColor),
            onPressed: _nextPage,
          ),
        ),
      ],
    );
  }
}
