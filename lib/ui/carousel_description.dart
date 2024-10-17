import 'package:flutter/material.dart'; 
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:fraktal_platform/constants/colors.dart';
import 'package:fraktal_platform/ui/text.dart';

class CarouselDescription extends StatefulWidget {
  final List<String> imagePaths;
  final List<String> captions; // Liste de textes à afficher sur chaque image

  const CarouselDescription({super.key, required this.imagePaths, required this.captions});

  @override
  // ignore: library_private_types_in_public_api
  _CarouselDescriptionState createState() => _CarouselDescriptionState();
}

class _CarouselDescriptionState extends State<CarouselDescription> {
  final FlutterCarouselController _buttonCarouselController = FlutterCarouselController();

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
              height: 600,
              controller: _buttonCarouselController,
              autoPlay: true,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                });
              },
            ),
            items: List.generate(widget.imagePaths.length, (index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      widget.imagePaths[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    // color: Colors.black.withOpacity(0.1), // Fond semi-transparent
                    child: TextWidget(
                      typeText: TextType.text5Xl,
                      widget.captions[index], // Texte sur l'image
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
        Positioned(
          left: 16,
          top: (600 / 2),
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
