import 'package:flutter/material.dart';  
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:fraktal_platform/constants/colors.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class CarouselSolution extends StatefulWidget {
  final List<String> imagePaths;
  final List<String> captions; 
  final List<String> subtitles; // Liste pour les sous-titres
  final double width; 

  const CarouselSolution({
    super.key, 
    required this.imagePaths, 
    required this.captions, 
    required this.subtitles, // Ajout du paramètre
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
          items: List.generate(widget.imagePaths.length, (index) {
            return Row( // Utiliser Row pour aligner les éléments
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espace entre le texte et l'image
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0), // Ajuste le padding selon tes besoins
                  child: Column( // Utilisez Column pour empiler le titre et le sous-titre
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligne à gauche
                    children: [
                      Text(
                        widget.captions[index],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4), // Espacement entre le titre et le sous-titre
                      Text(
                        widget.subtitles[index], // Affiche le sous-titre
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
                    widget.imagePaths[index],
                    width: 400, 
                    height: 300, // Ajuster la hauteur de l'image si nécessaire
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
