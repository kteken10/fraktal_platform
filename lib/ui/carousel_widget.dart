import 'package:flutter/material.dart';
import 'package:fraktal_platform/constants/colors.dart';
import 'text.dart';

class CarouselWidget extends StatefulWidget {
  final double width;
  final double height;
  final List<String> imagePaths;
  final List<String> texts;
  const CarouselWidget({
    super.key,
    this.width = double.infinity,
    this.height = 640,
    required this.imagePaths,
    required this.texts,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    Future.delayed(Duration(seconds: 5), _autoScroll);
  }

  void _autoScroll() {
    if (_currentPage < widget.imagePaths.length - 1) {
      _currentPage++;
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeIn,
      );
    } else {
      Future.delayed(Duration(milliseconds: 800), () {
        _currentPage = 0;
        _pageController.jumpToPage(_currentPage);
      });
    }

    Future.delayed(Duration(seconds: 5), _autoScroll);
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(

      alignment: Alignment.center,
      children: [
        SizedBox(
          
          width: widget.width,
          height: widget.height,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imagePaths.length,
            itemBuilder: (context, index) {
              return Center(
                child: Image.asset(
                  widget.imagePaths[index],
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              );
            },
            onPageChanged: _onPageChanged,
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            double textWidth = constraints.maxWidth * 0.6; // 3/5 de la largeur
            return Positioned(
              left: constraints.maxWidth *
                  0.1, // 1/5 de la largeur pour le décalage
              top: (widget.height / 2) - 20, // Centrage vertical
              child: Container(
                width: textWidth,
                padding: const EdgeInsets.all(8.0),
                child: TextWidget(
                  typeText:TextType.text6Xl,
                  style:
                      TextStyle(
                        color: AppColors.primaryColor
                        )
                        ,
                  widget.texts[_currentPage],
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 20,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(widget.imagePaths.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 12 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentPage == index ? Colors.white : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
              );
            }),
          ),
        ),
        Positioned(
          left: 16,
          top: (widget.height / 2) - 20,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
            onPressed: () {
              if (_currentPage == 0) {
                _currentPage = widget.imagePaths.length - 1;
              } else {
                _currentPage--;
              }
              _pageController.jumpToPage(_currentPage);
            },
          ),
        ),
        Positioned(
          right: 16,
          top: (widget.height / 2) - 20,
          child: IconButton(
            icon: Icon(Icons.arrow_forward_ios_sharp,
                color: AppColors.primaryColor),
            onPressed: () {
              if (_currentPage == widget.imagePaths.length - 1) {
                _currentPage = 0;
              } else {
                _currentPage++;
              }
              _pageController.jumpToPage(_currentPage);
            },
          ),
        ),
      ],
    );
  }
}
