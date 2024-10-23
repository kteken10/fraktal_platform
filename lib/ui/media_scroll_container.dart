import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/colors.dart';
import 'media_cart.dart'; // Assurez-vous d'importer votre MediaCart ici

class MediaScrollContainer extends StatefulWidget {
  final List<dynamic> items;
  final double containerWidth;
  final bool isFormation; 

  const MediaScrollContainer({
    super.key,
    required this.items,
    required this.containerWidth,
    required this.isFormation,
  });

  @override
  _MediaScrollContainerState createState() => _MediaScrollContainerState();
}

class _MediaScrollContainerState extends State<MediaScrollContainer> {
  final ScrollController _scrollController = ScrollController();
  int _currentStartIndex = 0;
  final int _itemsPerPage = 5;

  void _scrollLeft() {
    if (_currentStartIndex > 0) {
      setState(() {
        _currentStartIndex -= _itemsPerPage;
        _scrollController.animateTo(
          _currentStartIndex * (widget.containerWidth / _itemsPerPage),
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  void _scrollRight() {
    if (_currentStartIndex + _itemsPerPage < widget.items.length) {
      setState(() {
        _currentStartIndex += _itemsPerPage;
        _scrollController.animateTo(
          _currentStartIndex * (widget.containerWidth / _itemsPerPage),
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Limiter les éléments affichés selon l'index courant
    final displayedItems = widget.items.sublist(
      _currentStartIndex,
      (_currentStartIndex + _itemsPerPage).clamp(0, widget.items.length),
    );

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      width: widget.containerWidth,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.chevronLeft, color: AppColors.primaryColor),
            onPressed: _scrollLeft,
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: widget.items.map((item) {
                  return SizedBox(
                    width: widget.containerWidth / _itemsPerPage,
                    child: MediaCart(
                      resource: item, 
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.chevronRight, color: AppColors.primaryColor),
            onPressed: _scrollRight,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
