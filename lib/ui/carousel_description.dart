import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CarouselDescription extends StatefulWidget {
  final List<String> imagePaths;

  const CarouselDescription({super.key, required this.imagePaths});

  @override
  _CarouselDescriptionState createState() => _CarouselDescriptionState();
}

class _CarouselDescriptionState extends State<CarouselDescription> {
  final FlutterCarouselController _buttonCarouselController = FlutterCarouselController();
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
        Container(
          height: 600,
          child: FlutterCarousel(
          
            options: FlutterCarouselOptions(
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
          top: (600 / 2) - 20,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: _previousPage,
          ),
        ),
        Positioned(
          right: 16,
          top: (600 / 2) - 20,
          child: IconButton(
            icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
            onPressed: _nextPage,
          ),
        ),
      ],
    );
  }
}
