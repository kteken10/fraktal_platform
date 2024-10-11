import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  final double width;
  final double height;
  final List<String> imagePaths;

  const CarouselWidget({
    super.key,
    this.width = double.infinity,
    this.height = 640,
    required this.imagePaths,
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
        _currentPage = 0; // Réinitialiser à la première page
        
        _pageController.jumpToPage(_currentPage
        );
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
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              if (_currentPage == 0) {
                // Aller à la dernière page
                _currentPage = widget.imagePaths.length - 1;
              } else {
                // Aller à la page précédente
                _currentPage--;
              }
              _pageController.jumpToPage(_currentPage); // Changement instantané
            },
          ),
        ),
        Positioned(
          right: 16,
          top: (widget.height / 2) - 20,
          child: IconButton(
            icon: Icon(Icons.arrow_forward_ios_sharp, color: Colors.white),
            onPressed: () {
              if (_currentPage == widget.imagePaths.length - 1) {
                // Aller à la première page
                _currentPage = 0;
              } else {
                // Aller à la page suivante
                _currentPage++;
              }
              _pageController.jumpToPage(_currentPage); // Changement instantané
            },
          ),
        ),
      ],
    );
  }
}
