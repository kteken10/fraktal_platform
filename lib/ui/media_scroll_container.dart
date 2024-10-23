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

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - widget.containerWidth / 5, // Ajustez la valeur si nécessaire
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + widget.containerWidth / 5, // Ajustez la valeur si nécessaire
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 16),
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
                    width: widget.containerWidth / 5,
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
